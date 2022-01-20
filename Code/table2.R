library(xtable)
library(rethinking)

#load data
sa <- read.csv("Data/survival_dataset_all.csv", stringsAsFactors = F)
sf <- read.csv("Data/survival_dataset_ff.csv", stringsAsFactors = F)
sm <- read.csv("Data/survival_dataset_fm.csv", stringsAsFactors = F)

# make sure female-female and male-male datsets have ony rows with complete cases
sf <- sf[ complete.cases(sf),]
sm <- sm[ complete.cases(sm),]


# social integration measures
measures <- c("Grooming giving", "Grooming receiving", "Support giving", "Support receiving", "Foraging")

# get min and max for all group members dataset
min_all <- c(round( min(sa$gg_mean),2 ),
             round( min(sa$gr_mean),2 ),
             round( min(sa$sg_mean),2 ),
             round( min(sa$sr_mean),2 ),
             round( min(sa$f_mean),2 )
             )

max_all <- c(round( max(sa$gg_mean),2 ),
             round( max(sa$gr_mean),2 ),
             round( max(sa$sg_mean),2 ),
             round( max(sa$sr_mean),2 ),
             round( max(sa$f_mean),2 )
            )

# get min and max for adult female dataset               
min_ff <- c(round( min(sf$gg_mean),2 ),
             round( min(sf$gr_mean),2 ),
             round( min(sf$sg_mean),2 ),
             round( min(sf$sr_mean),2 ),
             round( min(sf$f_mean),2 )
            )

max_ff <- c(round( max(sf$gg_mean),2 ),
             round( max(sf$gr_mean),2 ),
             round( max(sf$sg_mean),2 ),
             round( max(sf$sr_mean),2 ),
             round( max(sf$f_mean),2 )
            )

# get min and max for adult male dataset               
min_fm <- c(round( min(sm$gg_mean),2 ),
             round( min(sm$gr_mean),2 ),
             round( min(sm$sg_mean),2 ),
             round( min(sm$sr_mean),2 ),
             round( min(sm$f_mean),2 )
)

max_fm <- c(round( max(sm$gg_mean),2 ),
             round( max(sm$gr_mean),2 ),
             round( max(sm$sg_mean),2 ),
             round( max(sm$sr_mean),2 ),
             round( max(sm$f_mean),2 )
)

# make a table
var <- data.frame(Socialintegrationmeasure = measures,
                  Allgroupmembers = paste0(min_all,"; ", max_all),
                  Adutfemales = paste0(min_ff,"; ", max_ff),
                  Adutmales = paste0(min_fm, "; ", max_fm )
                  )

# TABLE 2
print( xtable(var), include.rownames=FALSE )

