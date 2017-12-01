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











