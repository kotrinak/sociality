
# Kotrina Kajokaite
# Bayesian Cox Proportional Hazard model 

######################################################
# load packages
library(rethinking)

# load data
d <- read.csv("survival_dataset.csv", stringsAsFactors = F)

# store interaction type names
int_type <- c( "gg","gr", "sg", "sr", "f") 
# gg - groom giving, 
# gr - groom receiving, 
# sg - support giving in coalitionary aggression
# sr - support receiving in coalitionary aggression
# f - foraging in close proximity of others

######################################################
# set initial seed of random number generator
set.seed(838)

# model
model_code <- alist(
  
  days_survived|died==1 ~ exponential( lambda ),
  days_survived|died==0 ~ custom(exponential_lccdf( !Y | lambda )),
  
  lambda <- 1.0/mu,
  
  log(mu) <- base_rate + a[female] + b_sociality*true_rate[index] + b_rank*rank_s +
    b_age*age_s +  b_daughters*daughters_s+ b_mother*mother_s  + 
    b_group_size*group_s, 
  
  true_rate[index] ~ dnorm( ind_rate_mean[index], ind_rate_sd[index] ),
  
  # priors
  base_rate ~ dnorm(8, 0.5),
  a[female] ~ dnorm(0, 1),
  c(b_sociality, b_rank, b_age, b_daughters, b_mother, b_group_size) ~ dnorm(0, 1)
)


# loop through five interaction types
for( i in 1:length(int_type) ){
  
  # assemble data  
  dat <- list(
    
    index = 1:nrow( d ),
    female = coerce_index( d$id ),
    days_survived = as.integer( d$days_survived_this_year_this_group ), 
    died = as.integer( d$died ),
    
    # Individual mean and sd for sociality measure 
    ind_rate_mean = as.numeric( eval( parse( text=paste0("d$",int_type[i],"_mean_s") ) ) ), 
    ind_rate_sd = as.numeric( eval( parse( text=paste0("d$",int_type[i],"_sd_s") ) ) ), 
    
    # other
    rank_s = as.numeric( d$rank_s ),
    age_s = as.numeric( d$age_s ),
    mother_s = as.numeric( d$mother_s), 
    daughters_s = as.numeric( d$daughters_c),
    group_s = as.numeric( d$group_size_s )
    
  )
  
  # fit the model
  m = ulam( model_code, data = dat, chains = 4 )
  
  # assign model names by interaction type
  assign( paste0("m",int_type[i] ) , m )
  
}


