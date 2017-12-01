# In This script file I will try the simulateSNPs examples given in the helper link
# Helperlink : https://github.com/cran/scrime/blob/master/man/simulateSNPs.Rd

#load needed libraries
library(scrime)

# Example (1)

# Simulate a data set containing 2000 observations (1000 cases
# and 1000 controls) and 50 SNPs, where one three-way and two 
# two-way interactions are chosen randomly to be explanatory 
# for the case-control status.

sim1 <- simulateSNPs(2000, 50, c(3, 2, 2))
sim1

# output 
#                     Interaction         Cases  Controls
#1 SNP1 == 1  &  SNP2 != 1  &  SNP3 == 1   333        0
#2               SNP4 == 0  &  SNP5 != 2   333        0
#3               SNP6 != 1  &  SNP7 == 0   334        0

#--------------------------------------------------------

# Example (2)

# Simulate data of 1200 cases and 800 controls for 50 SNPs, 
# where 90\% of the observations showing a randomly chosen 
# three-way interaction are cases, and 95\% of the observations 
# showing a randomly chosen two-way interactions are cases.

sim2 <- simulateSNPs(c(1200, 800), 50, c(3, 2), 
                     prop.explain = c(0.9, 0.95))
sim2

# output 
#                     Interaction         Cases  Controls
#1 SNP1 == 1  &  SNP2 == 1  &  SNP3 == 0   600       67
#2               SNP4 != 0  &  SNP5 == 1   600       32

#--------------------------------------------------------

# Example (3)

# Simulate a data set consisting of 1000 observations and 50 SNPs,
# where the minor allele frequency of each SNP is 0.25, and
# the interactions 
# ((SNP1 == 2) & (SNP2 != 0) & (SNP3 == 1))   and 
# ((SNP4 == 0) & (SNP5 != 2))
# are explanatory for 200 and 250 of the 500 cases, respectively,
# and for none of the 500 controls.

list1 <- list(c(2, 0, 1), c(0, 2))
list2 <- list(c(1, 0, 1), c(1, 0))
sim3 <- simulateSNPs(1000, 50, c(3, 2), list.ia.val = list1,
                     list.equal = list2, vec.ia.num = c(200, 250), maf = 0.25)
sim3

# output 
#                     Interaction         Cases  Controls
#1 SNP1 == 2  &  SNP2 != 0  &  SNP3 == 1   200        0
#2               SNP4 == 0  &  SNP5 != 2   250        0

#--------------------------------------------------------------
# In this section I wana invistigate the return obj sim

# Shows the data in matrix form 
# nrow -> mapes to no of observations
# ncol -> mapes to no. of SNPs
# NB: values inside are 0 ,1 ,2 !! what it indicate ?
View (sim1$data)

#item{cl}{a vector of length \code{n.obs} comprising 
#the case-control status of the observations.
View(as.list(sim1$cl)) # All are 1s
dim(as.matrix(sim1$cl)) # 2000  x  1

# item{tab.explain}
# {a table naming the explanatory interactions and the numbers
#  of cases and controls explained by them.}
# in other words it shows the output in tabular formate ;)
View(sim1$tab.explain)









