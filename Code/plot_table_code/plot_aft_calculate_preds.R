library(rethinking)

###################################################
# import data
de <- read.csv("Data/survival_dataset.csv")
df <- read.csv("Data/survival_dataset_ff.csv")
dm <- read.csv("Data/survival_dataset_fm.csv")

df <- df[complete.cases(df),]
dm <- dm[complete.cases(dm),]

# load fitted models
load("Results/fitted_models_aft/exp_results.RDATA")
egg <- mgg
egr <- mgr
esg <- msg
esr <- msr
ef <- mf

load("Results/fitted_models_aft/exp_ff_results.RDATA")
fgg <- mgg
fgr <- mgr
fsg <- msg
fsr <- msr
ff <- mf

load("Results/fitted_models_aft/exp_fm_results.RDATA")
# mgg...
###################################################

# model names that you need to loop through
models <- c("egg","egr","esg","esr","ef","fgg","fgr","fsg","fsr","ff","mgg", "mgr", "msg", "msr", "mf")

# Fix age to mean age
age <- 0
#  Fix rank: the middle of the hierarchy, standardized
rank <- 0
# fix mean group size, standardized
group_size <- 0

# create an empty list to store sociality measures for each behavior
soc_stand <- list()
soc_stand[[1]] <- (de$gg_mean - mean(de$gg_mean) ) / sd(de$gg_mean)
soc_stand[[2]] <- (de$gr_mean - mean(de$gr_mean) ) / sd(de$gr_mean)
soc_stand[[3]] <- (de$sg_mean - mean(de$sg_mean) ) / sd(de$sg_mean)
soc_stand[[4]] <- (de$sr_mean - mean(de$sr_mean) ) / sd(de$sr_mean)
soc_stand[[5]] <- (de$f_mean - mean(de$f_mean) ) / sd(de$f_mean)
soc_stand[[6]] <- (df$gg_mean - mean(df$gg_mean) ) / sd(df$gg_mean)
soc_stand[[7]] <- (df$gr_mean - mean(df$gr_mean) ) / sd(df$gr_mean)
soc_stand[[8]] <- (df$sg_mean - mean(df$sg_mean) ) / sd(df$sg_mean)
soc_stand[[9]] <- (df$sr_mean - mean(df$sr_mean) ) / sd(df$sr_mean)
soc_stand[[10]] <- (df$f_mean - mean(df$f_mean) ) / sd(df$f_mean)
soc_stand[[11]] <- (dm$gg_mean - mean(dm$gg_mean) ) / sd(dm$gg_mean)
soc_stand[[12]] <- (dm$gr_mean - mean(dm$gr_mean) ) / sd(dm$gr_mean)
soc_stand[[13]] <- (dm$sg_mean - mean(dm$sg_mean) ) / sd(dm$sg_mean)
soc_stand[[14]] <- (dm$sr_mean - mean(dm$sr_mean) ) / sd(dm$sr_mean)
soc_stand[[15]] <- (dm$f_mean - mean(dm$f_mean) ) / sd(dm$f_mean)

soc_seq <- list()
for( i in 1:15){
  soc_seq[[i]] <- seq( min(soc_stand[[i]]), max(soc_stand[[i]]), length.out = 20 )
}

soc_nat <- list()
soc_nat[[1]] <- seq(min(de$gg_mean), max(de$gg_mean), length.out = 20)
soc_nat[[2]] <- seq(min(de$gr_mean), max(de$gr_mean), length.out = 20)
soc_nat[[3]] <- seq(min(de$sg_mean), max(de$sg_mean), length.out = 20)
soc_nat[[4]] <- seq(min(de$sr_mean), max(de$sg_mean), length.out = 20)
soc_nat[[5]] <- seq(min(de$f_mean), max(de$f_mean), length.out = 20)

soc_nat[[6]] <- seq(min(df$gg_mean), max(df$gg_mean), length.out = 20)
soc_nat[[7]] <- seq(min(df$gr_mean), max(df$gr_mean), length.out = 20)
soc_nat[[8]] <- seq(min(df$sg_mean), max(df$sg_mean), length.out = 20)
soc_nat[[9]] <- seq(min(df$sr_mean), max(df$sg_mean), length.out = 20)
soc_nat[[10]] <- seq(min(df$f_mean), max(df$f_mean), length.out = 20)

soc_nat[[11]] <- seq(min(dm$gg_mean), max(dm$gg_mean), length.out = 20)
soc_nat[[12]] <- seq(min(dm$gr_mean), max(dm$gr_mean), length.out = 20)
soc_nat[[13]] <- seq(min(dm$sg_mean), max(dm$sg_mean), length.out = 20)
soc_nat[[14]] <- seq(min(dm$sr_mean), max(dm$sg_mean), length.out = 20)
soc_nat[[15]] <- seq(min(dm$f_mean), max(dm$f_mean), length.out = 20)


# compute predictions:
for( i in models){
  
  # extract posterior samples
  post <- extract.samples( eval( parse( text=paste0( i ) ) ) )
  
  # make empty lists t store the results
  results_lambda_median <- list()
  results_lambda_HPDI <- list()
  
  # sociality sequence from SURV true_rates
  soc <- soc_seq[[ which(i==models) ]]
  
  # loop through sociality measures and compute predictions
    mu_link <- function(x) exp( post$base_rate + 
                                  post$b_sociality * x + 
                                  post$b_rank * rank + 
                                  post$b_age * age + 
                                  post$b_group_size * group_size )
    
    
    mu <- sapply( soc, mu_link ) 
    
    # number of days
    mu_median <- apply( mu , 2 , median )
    mu_HPDI <- apply( mu , 2 , HPDI , prob=0.95 )
    
    # daily death rate
    lambda_day <- 1/mu
    lambda <- 1 - (1 - lambda_day)^365 # approx. annual probability of dying
    
    # approx annual probability of dying
    lambda_median <- apply( lambda , 2 , median )
    lambda_HPDI <- apply( lambda , 2 , HPDI , prob=0.95 )
    
    # save results
    results_lambda_median <- lambda_median 
    results_lambda_HPDI<- lambda_HPDI
  
  
  # store the results outside of the loop
  assign( paste0(i, "_med"), results_lambda_median )
  assign( paste0(i, "_HPDI"), results_lambda_HPDI )
  
}

# the data is ready for plotting



