# Kotrina Kajokaite
library(rethinking)
library(xtable)
# table script

net <- c("", "_ff", "_fm")


# loop through datasets
for( n in 1:length(net) ){
  
  # load data
  load( paste0( "Results/fitted_models_aft/exp",net[n],"_results.RDATA") ) 
  
  r1 <- precis(mgg, pars=c("base_rate","b_sociality","b_age", "b_rank", "b_group_size"))
  r2 <- precis(mgr, pars=c("base_rate","b_sociality","b_age", "b_rank", "b_group_size"))
  r3 <- precis(msg, pars=c("base_rate","b_sociality","b_age", "b_rank", "b_group_size"))
  r4 <- precis(msr, pars=c("base_rate","b_sociality","b_age", "b_rank", "b_group_size"))
  r5 <- precis(mf, pars=c("base_rate","b_sociality","b_age", "b_rank", "b_group_size"))
  
  rr1 <- as.data.frame(r1)
  rr2 <- as.data.frame(r2)
  rr3 <- as.data.frame(r3)
  rr4 <- as.data.frame(r4)
  rr5 <- as.data.frame(r5)
  
  row.names(rr1) <- c("Intercept","Grooming giving","Age", "Rank", "Group size" )
  row.names(rr2) <- c("Intercept","Grooming receiving","Age", "Rank", "Group size" )
  row.names(rr3) <- c("Intercept","Support giving","Age", "Rank", "Group size" )
  row.names(rr4) <- c("Intercept","Support receiving","Age", "Rank", "Group size" )
  row.names(rr5) <- c("Intercept","Foraging","Age", "Rank", "Group size" )
  
  colnames(rr1) <- c("Mean", "SD","5.5%",  "94.5%" ,"n_eff", "Rhat4")
  colnames(rr2) <- c("Mean", "SD","5.5%",  "94.5%" ,"n_eff", "Rhat4")
  colnames(rr3) <- c("Mean", "SD","5.5%",  "94.5%" ,"n_eff", "Rhat4")
  colnames(rr4) <- c("Mean", "SD","5.5%",  "94.5%" ,"n_eff", "Rhat4")
  colnames(rr5) <- c("Mean", "SD","5.5%",  "94.5%" ,"n_eff", "Rhat4")
  
  assign( paste0("rgg", n), rr1 )
  assign( paste0("rgr", n), rr2 )
  assign( paste0("rsg", n), rr3 )
  assign( paste0("rsr", n), rr4 )
  assign( paste0("rf", n), rr5 )
  
  
  pars <- c("Intercept", "Sociality", "Age", "Rank", "Group size")
  
  rgg <- sapply( 1:length( rr1$Mean ), function(x) paste0( round(rr1$Mean[x],2),
                                                          " (",round(rr1$`5.5%`[x],2), 
                                                          "; " , round(rr1$`94.5%`[x],2), ")" ) )
  
  rgr <- sapply( 1:length( rr2$Mean ), function(x) paste0( round(rr2$Mean[x],2),
                                                          " (",round(rr2$`5.5%`[x],2), 
                                                          "; " , round(rr2$`94.5%`[x],2), ")" ) )
  
  rsg <- sapply( 1:length( rr3$Mean ), function(x) paste0( round(rr3$Mean[x],2),
                                                          " (",round(rr3$`5.5%`[x],2), 
                                                          "; " , round(rr3$`94.5%`[x],2), ")" ) )
  
  rsr <- sapply( 1:length( rr4$Mean ), function(x) paste0( round(rr4$Mean[x],2),
                                                          " (",round(rr4$`5.5%`[x],2), 
                                                          "; " , round(rr4$`94.5%`[x],2), ")" ) )
  
  rf <- sapply( 1:length( rr5$Mean ), function(x) paste0( round(rr5$Mean[x],2),
                                                         " (",round(rr5$`5.5%`[x],2), 
                                                         "; " , round(rr5$`94.5%`[x],2), ")" ) )
  
  
  
  table <- data.frame(Parameters=pars,
                      GroomingGiving=rgg,
                      GroomingReceiving=rgr,
                      SupportGiving=rsg,
                      SupportReceiving=rsr,
                      Foraging=rf)
  
  
  assign( paste0("t", n), table )
}

#t1 everyone
#t2 ff
#t3 fm
# make one large table
tt <- cbind(t1, t2, t3)

# Grooming giving
t.gg <- tt[,c(1:2,8,14)]
t.gg$Parameters <- c("Intercept","Grooming giving","Age", "Rank", "Group size" )
colnames(t.gg) <- c("", "All group members", "Adult females", "Adult males")
xtable(t.gg)

# Grooming receiving
tt <- cbind(t1, t2, t3)
t.gr <- tt[,c(1,3,9,15)]
t.gr$Parameters <- c("Intercept","Grooming receiving","Age", "Rank", "Group size" )
colnames(t.gr) <- c("", "All group members", "Adult females", "Adult males")
xtable(t.gr)


# Support giving
tt <- cbind(t1, t2, t3)
t.sg <- tt[,c(1,4,10,16)]
t.sg$Parameters <- c("Intercept","Support giving","Age", "Rank", "Group size" )
colnames(t.sg) <- c("", "All group members", "Adult females", "Adult males")
xtable(t.sg)


# Support receiving
tt <- cbind(t1, t2, t3)
t.sr <- tt[,c(1,5,11,17)]
t.sr$Parameters <- c("Intercept","Support receiving","Age", "Rank", "Group size" )
colnames(t.sr) <- c("", "All group members", "Adult females", "Adult males")
xtable(t.sr)


# Foraging
tt <- cbind(t1, t2, t3)
t.f <- tt[,c(1,6,12,18)]
t.f$Parameters <- c("Intercept","Foraging","Age", "Rank", "Group size" )
colnames(t.f) <- c("", "All group members", "Adult females", "Adult males")
xtable(t.f)

# Make a separate table for each model

xtable(rgg1)
xtable(rgr1)
xtable(rsg1)
xtable(rsr1)
xtable(rf1)

xtable(rgg2)
xtable(rgr2)
xtable(rsg2)
xtable(rsr2)
xtable(rf2)


xtable(rgg3)
xtable(rgr3)
xtable(rsg3)
xtable(rsr3)
xtable(rf3)

