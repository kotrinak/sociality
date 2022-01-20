# Kotrina Kajokaite
# This script makes a table 1 for Kajokaite et al. 2022

library(xtable)
library(rethinking)

#load data
sla <- read.csv("Data/survival_dataset_all.csv", stringsAsFactors = F)
slf <- read.csv("Data/survival_dataset_ff.csv", stringsAsFactors = F)
slm <- read.csv("Data/survival_dataset_fm.csv", stringsAsFactors = F)

# make sure female-female and male-male datsets have ony rows with complete cases
slf <- slf[ complete.cases(slf),]
slm <- slm[ complete.cases(slm),]


# number of females
females1 <- length( unique( sla$female ) )
females2 <- length( unique( slf$female ) )
females3 <- length( unique( slm$female ) )

# number of female years
female_years1 <- length( sla$female )
female_years2 <- length( slf$female )
female_years3 <- length( slm$female )

# number of deaths
deaths1 <- sum( sla$died )
deaths2 <- sum( slf$died )
deaths3 <- sum( slm$died )

# make a table
d <- data.frame( Dataset = c("All group members", "Adult females", "Adult males"),
                 NumFemales = c(females1, females2, females3),
                 NumFemaleYears = c(female_years1, female_years2, female_years3),
                 NumDeaths = c(deaths1, deaths2, deaths3 ) )

# TABLE 1
print(xtable(d, digits=c(0,0,0,0,0)), include.rownames=FALSE)



