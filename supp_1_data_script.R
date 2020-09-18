# load packages
library(rethinking)

setwd("~/Dropbox/1_Projects/sociality_longevity/data_required")

#############################################################
####    EDIT THIS SECTION BEFORE RUNNING THE SCRIPT   #######
#############################################################

# pick behavior: 1 - grooming, 2 - support in coalitionary aggression, 3 - foraging in close proximity
behavior <- 3
#############################################################

behavior_label <- c("groom", "support","forage")

if( behavior < 3)
    # for either grooming or support - directed_matrix.csv
    directed_import <- read.csv ( file = "./directed_matrix.csv")

    # model code
    source("supp_directed_model0.R")

if(behavior ==  1) #for grooming
    # subset to cases where a dyad had an opportunity to groom
    dat <- subset( directed_import, !is.na(groom) )
    
    # rename columns
    colnames(dat)[colnames(dat) == "groom"] <- "count"
    colnames(dat)[colnames(dat) == "groom_exposure"] <- "exposure"
    
if(behavior ==  2) #for coalitionary support
    # subset to cases where a dyad had an opportunity to support in coalitionary aggression
    dat <- subset (directed_import, !is.na(support) )
    
    # rename columns
    colnames(dat)[colnames(dat) == "support"] <- "count"
    colnames(dat)[colnames(dat) == "support_exposure"] <- "exposure"
  
if(behavior == 3)#  for foraging
  # for foraging -- undirected_matrix.csv
  undirected_import <- read.csv ( file = "./undirected_matrix.csv")
  
  # model code
  source("supp_undirected_model0.R")
  
  # subset to cases where a dyad had an opportunity to forage in close proximity
  dat <- subset (undirected_import, !is.na(forage))
  
  # rename some columns
  colnames(dat)[colnames(dat) == "forage"] <- "count"
  colnames(dat)[colnames(dat) == "forage_exposure"] <- "exposure"


#############################################################
#### prepare data ###########################################
#############################################################

# group ID index
dat$k_ID <- dat$group_idx

# preparing node/group/year indexes
dat$ikt_paste <- paste(dat$indivA, "_", dat$group_idx, "_", dat$year, sep = "")
dat$jkt_paste <- paste(dat$indivB, "_", dat$group_idx, "_", dat$year, sep = "")

# assign indexes to individuals
nodes <- coerce_index(dat$ikt_paste, dat$jkt_paste)
dat$ikt_ID <- nodes[[1]]
dat$jkt_ID <- nodes[[2]]

# preparding symmetric dyad/group/year indexes
dat$first <- ifelse ( dat$indivA < dat$indivB, dat$indivA, dat$indivB)
dat$second <- ifelse ( dat$indivA > dat$indivB, dat$indivA, dat$indivB)

dat$ijkt_paste <- paste ( dat$first , "_", dat$second, "_", dat$group_idx, "_", dat$year, sep = "")
dat$ijkt_ID <- coerce_index (dat$ijkt_paste)
table(is.na(dat$ijkt_paste)) # check that there are no NAs

if(behavior <  3){# only for grooming and support
  
  # preparing directed dyad/group/year indexes
  dat$i2jkt_paste <- paste(dat$indivA, "_", dat$indivB,  "_", dat$group_idx, "_", dat$year, sep = "")
  dat$i2jkt_ID <- coerce_index(dat$i2jkt_paste)
  table(is.na(dat$i2jkt_ID)) # check that there are no NAs
}

## data list 
dat_list <- list(
                N = nrow (dat),
                N_i__j_kt_ID = max(dat$ikt_ID, dat$jkt_ID),
                N_ij_kt_ID = max(dat$ijkt_ID),
                N_i2j_kt_ID = max(dat$i2jkt_ID), # this will be NA for forage
                N_k_ID = max(dat$k_ID),
                y = dat$count,
                denominator = dat$exposure,
                ikt_ID = dat$ikt_ID,
                jkt_ID = dat$jkt_ID,
                ijkt_ID = dat$ijkt_ID,
                i2jkt_ID = dat$i2jkt_ID,# this will be NA for forage
                k_ID = dat$k_ID )

n_chains = 4
n_cores = 4
n_warmup = 500
n_iter = 1000
n_thin = 1

# model
start.time <- Sys.time()
m0 <- stan( model_code=model_code_0 , data = dat_list , chains=n_chains , cores=n_cores, warmup = n_warmup, iter = n_iter, thin = n_thin, control=list(adapt_delta=0.99))
end.time <- Sys.time()
end.time - start.time

# save model object and summary 
save( m0, file=paste0("m0",behavior_label[behavior],".RDATA" ) )

#################################################################################
###   EXTRACT INDIVIDUAL MEAN ESTIMATES   #######################################
#################################################################################


# model summary
m0p <- precis( m0, depth = 3 )

# save precis for Table 1
save( m0p, file=paste0( behavior_label[ behavior ], "_precis.RDATA") )

# get a list of individual idx/group/year combination indexes
idx <- sort( unique ( c( dat$ikt_ID, dat$jkt_ID) ) )

# pull out model estimated posterior giver and receiver effects
# for grooming and support
if( behavior < 3 )
    
    # giver posterior means
    post_mean_giver <- sapply( idx, function(z) 
      m0p[ which( m0p@row.names == paste0( "v_i__j_kt_ID[", z,",1]")  ) , 1]  ) 
    # giver posterior sd 
    post_sd_giver <- sapply( idx, function(z)
      m0p[ which( m0p@row.names == paste0( "v_i__j_kt_ID[", z,",1]")  ) , 2] )  
    
    # receiver posterior means
    post_mean_receiver <- sapply( idx, function(z)
      m0p[ which( m0p@row.names == paste0("v_i__j_kt_ID[", z,",2]")  ) ,1] ) 
    # receiver posterior sd
    post_sd_receiver <- sapply( idx, function(z)
      m0p[ which( m0p@row.names == paste0("v_i__j_kt_ID[", z,",2]")  ) ,2] )
    
  # make results dataset
    r <- data.frame( ikt_ID = idx, # this is ID of a combination of individual id, group id, and year
                     post_mean_giver = post_mean_giver,
                     post_sd_giver = post_sd_giver,
                     post_mean_receiver = post_mean_receiver,
                     post_sd_receiver)

    # save results for plotting Figure 1 and Figure 2
    write.csv(r, paste0( behavior_label[ behavior ],"_individual_post_estimates.csv"), row.names = F)
    
    
    
# for foraging    
if( behavior == 3)
    
    # posterior mean
    post_mean <- sapply( idx, function(z)
      m0p[ which(m0p@row.names == paste0("v_i__j_kt_ID[", z,"]")  ) ,1] ) 
    
    # sd
    post_sd <- sapply( idx, function(z)
      m0p[ which(m0p@row.names == paste0("v_i__j_kt_ID[", z,"]")  ) ,2 ] )
    

    # make results dataset for foraging
    rr <- data.frame( ikt_ID = idx, # this is ID of a combination of individual id, group id, and year
                     post_mean = post_mean,
                     post_sd = post_sd)
    
    # save results for plotting Figure 1 and Figure 2
    write.csv(rr, paste0( behavior_label[ behavior ],"_individual_post_estimates.csv"), row.names = F)
    















