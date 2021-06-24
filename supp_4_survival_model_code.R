
# Kotrina Kajokaite
# Bayesian accelerated failure time model 

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

# create female indexes for survival analysis
d$idx_survival <- coerce_index( paste0("a",d$idx ) )
sum( is.na(d$idx_survival) ) # check if any NAs were created (0 means none)

######################################################

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
    female = coerce_index( d$idx_survival ),
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

# save model fit for plotting
save(mgg,mgr,msg,msr,mf, file="survival_models.RDATA")
####################################################################################################
### TABLE 1   ######################################################################################
####################################################################################################

pr1 <- precis(mgg, depth=3, prob=0.95,pars=c("base_rate","b_sociality","b_rank","b_age",       
                                             "b_daughters","b_mother","b_group_size") )
pr2 <- precis(mgr, depth=3,prob=0.95, pars=c("base_rate","b_sociality","b_rank","b_age",       
                                             "b_daughters","b_mother","b_group_size") )
pr3 <- precis(msg, depth=3,prob=0.95, pars=c("base_rate","b_sociality","b_rank","b_age",       
                                             "b_daughters","b_mother","b_group_size") )
pr4 <- precis(msr, depth=3,prob=0.95, pars=c("base_rate","b_sociality","b_rank","b_age",        
                                             "b_daughters","b_mother","b_group_size") )
pr5 <- precis(mf, depth=3, prob=0.95,pars=c("base_rate","b_sociality","b_rank","b_age",       
                                            "b_daughters","b_mother","b_group_size") )

gg <- data.frame(   model = rep("Grooming give", length(pr1$mean)),
                    parameter = row.names(pr1),
                    mean = pr1$mean,
                    sd = pr1$sd,
                    HPDI_low = pr1$`2.5%`,
                    HPDI_high = pr1$`97.5%`,
                    n_eff = pr1$n_eff,
                    Rhat = pr1$Rhat)

gr <- data.frame(   model = rep("Grooming receive", length(pr2$mean)),
                    parameter = row.names(pr2),
                    mean = pr2$mean,
                    sd = pr2$sd,
                    HPDI_low = pr2$`2.5%`,
                    HPDI_high = pr2$`97.5%`,
                    n_eff = pr2$n_eff,
                    Rhat = pr2$Rhat)

sg <- data.frame(   model = rep("Support give", length(pr3$mean)),
                    parameter = row.names(pr3),
                    mean = pr3$mean,
                    sd = pr3$sd,
                    HPDI_low = pr3$`2.5%`,
                    HPDI_high = pr3$`97.5%`,
                    n_eff = pr3$n_eff,
                    Rhat = pr3$Rhat)

sr <- data.frame(   model = rep("Support receive", length(pr4$mean)),
                    parameter = row.names(pr4),
                    mean = pr4$mean,
                    sd = pr4$sd,
                    HPDI_low = pr4$`2.5%`,
                    HPDI_high = pr4$`97.5%`,
                    n_eff = pr4$n_eff,
                    Rhat = pr4$Rhat)

fx <- data.frame(   model = rep("Forage in prox", length(pr5$mean)),
                    parameter = row.names(pr5),
                    mean = pr5$mean,
                    sd = pr5$sd,
                    HPDI_low = pr5$`2.5%`,
                    HPDI_high = pr5$`97.5%`,
                    n_eff = pr5$n_eff,
                    Rhat = pr5$Rhat)



table1 <- data.frame( 
  parameter=c("Intercept", "Sociality", "Rank", "Age", "number of daughters", "proportion mother is alive", "group size"),
  m1_groom_give= paste0( as.character(round(gg$mean,2)), " [", as.character(round(gg$HPDI_low,2)),",",as.character(round(gg$HPDI_high,2)) ,"]" ),
  m2_groom_receive= paste0( as.character(round(gr$mean,2)), " [", as.character(round(gr$HPDI_low,2)),",",as.character(round(gr$HPDI_high,2)) ,"]" ),
  m3_support_give= paste0( as.character(round(sg$mean,2)), " [", as.character(round(sg$HPDI_low,2)),",", as.character(round(sg$HPDI_high,2)),"]" ),
  m4_support_receive= paste0( as.character(round(sr$mean,2)), " [", as.character(round(sr$HPDI_low,2)),",",as.character(round(sr$HPDI_high,2)) ,"]" ),
  m5_forage= paste0( as.character(round(fx$mean,2)), " [", as.character(round(fx$HPDI_low,2)),",",as.character(round(fx$HPDI_high,2)) ,"]" )
  
)
