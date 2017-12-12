# In this file I will apply PCA on simulated SNPs data
#-------------------------------------------------------
#load needed libraries
library(scrime)

# Step 1  : Generate simulated SNPs data
# =======================================
# Simulate a data set containing 2000 observations (1000 cases
# and 1000 controls) and 100 SNPs, where one three-way and two 
# two-way interactions are chosen randomly to be explanatory 
# for the case-control status.
obs <- 2000 # number of observations
snps <- 100 # number of snps
intr.vec <- c(3, 2, 2) # interactions 
# call genrate function
sim.snps <- simulateSNPs(obs , snps , intr.vec )
# matrix of data 
View(sim.snps$data)
