# PCA-on-SNPs
This repo implements PCA approch on pathogenicity scores (e.g. CADD (Kircher et al., 2014)) of SNPs mapable to a defined geneset, but the data are simulated from R- package called "Scrime".

Q How to simulate SNPs data using "Scrime" ?

* helper Link : https://github.com/cran/scrime/blob/master/man/simulateSNPs.Rd
* Scrime doc : https://cran.r-project.org/web/packages/scrime/scrime.pdf

=> from githup doc (link 1)

* simulateSNPs(n.obs, n.snp, vec.ia, ..)
arguments{
  \item{n.obs}{either an integer specifying the total number of observations
  
  \item{n.snp}{integer specifying the number of SNPs.}
  
  \item{vec.ia}{a vector of integers specifying the orders of the interactions
    that explain the cases. \code{c(3,1,2,3)}, e.g., means that a three-way,
    a one-way (i.e. just a SNP), a two-way, and a three-way interaction explain the cases.}
-%%%%%%%%%%%%%%%%% Question %%%%%%%%%%%%%%%%%%%%%%%
Q didnt get item{vec.ia} !!!
-%%%%%%%%%%%%%%%%% %%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%
-%%%%%%%%%%%%%%%%% Question %%%%%%%%%%%%%%%%%%%%%%%
Q What is "allele frequency of each SNP" ?
-%%%%%%%%%%%%%%%%% %%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%



