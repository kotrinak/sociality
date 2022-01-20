# Kotrina Kajokaite, January 2022

rm(list = ls())


# load packages
library(rethinking)
library(dagitty)
library(ggplot2)
library(grid)
library(gridExtra)
library(cowplot)
library(xtable)


# set working directory to "sociality" folder
setwd("~/Sociality")


#######################################################################################################
####### 1. RUN SRM ON ALL SIX DATASETS  ###############################################################
#######################################################################################################

# run Social Relations Models
source("Code/srm_fit_groom_models.R")
source("Code/srm_fit_support_models.R")
source("Code/srm_fit_forage_models.R")


#######################################################################################################
####### 2. EXTRACT INDIVIDUAL ESTIMATES AND ADD THEM TO SURVIVAL DATASET    ###########################
#######################################################################################################

# should be run in this order:
source("Code/srm_extract_directed_results.R")
source("Code/srm_extract_undirected_results.R") 


#######################################################################################################
####### 3. RUN AFT MODELS    ##########################################################################
#######################################################################################################

# run accelerated failure time models
source("Code/aft_fit_all_models.R")
source("Code/aft_fit_ff_models.R")
source("Code/aft_fit_fm_models.R")

####################################################################################################
####### 4. MAKE TABLES          ####################################################################
####################################################################################################

source("Code/table1.R")
source("Code/table2.R")
source("Code/table3.R")

#####################################################################################################
####### 5. MAKE FIGURE 1   ##########################################################################
#####################################################################################################

source("Code/figure1.R")



