## Note that the model code and data preparation are more
## verbose than necessary. Because the model was estimated
## with common variances and covariances for all
## group-years, an appropriately indexed dataset could
## have been modeled with a single likelihood function
## in the Stan code. The present code is functionally
## equivalent


# load packages
library(rethinking)

# choose a behavioural domain
domain <- 3 # 1 - grooming, 2 - coalitionary support, 3 - forage

# import data
if(domain < 3){
  
  # if grooming/ support in coalitions, then import adjacency matrix
  d.import <- read.csv("directed_matrix.csv", stringsAsFactors = FALSE)
  
  # rename some columns
  if( domain==1){
    # rename columns
    colnames(d.import)[colnames(d.import) == "groom"] <- "count"
    colnames(d.import)[colnames(d.import) == "groom_exposure"] <- "exposure"
    # import model code
    source("supp grooming SRM model code.R")
      }else{
        # rename columns
    colnames(d.import)[colnames(d.import) == "support"] <- "count"
    colnames(d.import)[colnames(d.import) == "support_exposure"] <- "exposure"
    # import model code
    source("supp support SRM model code.R")
    }

  }else{
  # if foraging in close proximity, import undirected matrix and read model code
  d.import <- read.csv("undirected_matrix.csv", stringsAsFactors = FALSE)
  
  # rename some columns
  colnames(d.import)[colnames(d.import) == "forage"] <- "count"
  colnames(d.import)[colnames(d.import) == "forage_exposure"] <- "exposure"
  
  #import model code
  source("supp foraging SRM model code.R")
}

####################################################
### PREPARE DATA   #################################
####################################################

# drop lines where individuals did not have a chance to interact
dat <- subset( d.import, !is.na( count ) )

# create a variable that stores all unique group/year combinations
group_year <- unique( paste0( dat$group, dat$year) )

# prepare the data, loop through every group/year combinaion
for(g in 1:length(group_year)){
  
  dat.temp <- subset(dat, group == as.character( substr(group_year[g],1,2 ) )
                     & year == as.numeric( substr(group_year[g], 3, 6 ) ) )
  
  dat.temp$denominator <- dat.temp$exposure
  
  dat.temp_nodes <- coerce_index (dat.temp$indivA, dat.temp$indivB)
  dat.temp$i_ID <- dat.temp_nodes [[1]]
  dat.temp$j_ID <- dat.temp_nodes [[2]]
  
  dat.temp$first <- ifelse ( as.character(dat.temp$indivA) < as.character(dat.temp$indivB), paste(dat.temp$indivA), paste(dat.temp$indivB))
  dat.temp$second <- ifelse ( as.character(dat.temp$indivA) > as.character(dat.temp$indivB), paste(dat.temp$indivA), paste(dat.temp$indivB))
  dat.temp$ij_dyad <- paste (dat.temp$first, "_", dat.temp$second, sep = "")
  
  dat.temp$ij_ID <- coerce_index( factor(dat.temp$ij_dyad) )
  
  dat.temp$i2j <- paste( dat.temp$indivA, "_2_", dat.temp$indivB, sep = "" )
  dat.temp$i2j_ID <- coerce_index( factor(dat.temp$i2j) )
  
  
  assign( group_year[g], dat.temp )
  
}


# make datasets for model fitting
dat_list <- list(
 
  N_group = max( dat$group) )

for( y in group_year ){
  
  dat_list[[ paste0("N_",y) ]] <-   nrow( eval( parse( text=y ) ) )  
  dat_list[[ paste0("N_i__j_ID_", y ) ]] <-  max( eval( parse( text=paste0( y,"$i_ID" ) ) ), 
                                                  eval( parse( text=paste0( y,"$j_ID" ) ) ) )
  dat_list[[ paste0("N_dyads_", y) ]] <-  max( eval( parse( text=paste0( y,"$ij_ID") ) ) )
  dat_list[[ paste0("y_", y) ]] <- eval( parse( text=paste0( y,"$count") ) )
  dat_list[[ paste0("denominator_",y) ]] <- eval( parse( text=paste0( y,"$denominator") ) ) 
  dat_list[[ paste0( y, "_i_ID") ]] <- eval( parse( text=paste0( y,"$i_ID") ) ) 
  dat_list[[ paste0( y, "_j_ID") ]] <- eval( parse( text=paste0( y,"$j_ID") ) )
  dat_list[[ paste0( y, "_ij_ID") ]] <- eval( parse( text=paste0( y,"$ij_ID") ) ) 
  dat_list[[ paste0( y, "_i2j_ID") ]] <- eval( parse( text=paste0( y,"$i2j_ID") ) )
  dat_list[[ paste0( y, "_group_ID") ]] <- eval( parse( text=paste0( y,"$group_ID") ) ) 
  
}

n_chains = 4
n_cores = 4
n_warmup = 500
n_iter = 1000
n_thin = 1

#model
m0 <- stan( model_code=model_code_0 , data=dat_list , chains=n_chains , cores=n_chains, warmup = n_warmup, iter = n_iter, thin = n_thin, control=list(adapt_delta=0.99))


