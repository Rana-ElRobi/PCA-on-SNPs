# PCA-on-SNPs
This repo implements PCA approch on pathogenicity scores of SNPs mapable to a defined geneset, but the data are simulated from R-package called `Scrime`.

Q How to simulate SNPs data using "Scrime" ?

1. [ Function documentation on Github ] (https://github.com/cran/scrime/blob/master/man/simulateSNPs.Rd) 
2. [Scrime package documentation ] (https://cran.r-project.org/web/packages/scrime/scrime.pdf)

### Function brief description

`simulateSNPs(n.obs, n.snp, vec.ia, ..)`

 arguments
  - `n.obs`
    " either an integer specifying the total number of observations "
  
  - `n.snp` 
    " integer specifying the number of SNPs."
  
  - `vec.ia`
    " a vector of integers specifying the orders of the interactions
    that explain the cases."
    eg:` c(3,1,2,3)`,
    -  means that a three-way, a one-way (i.e. just a SNP), a two-way, and a three-way interaction explain the cases.
    
> %%%%% Question %%%%%
Q didnt get `vec.ia` !!!
( Q in another way )
" How i know which the order of interactions ? "

#### Q What is "allele frequency of each SNP" ?
- ** alleles mean: **
  " For example, at a specific base position in the human genome, the C nucleotide may appear in most individuals, but in a minority of individuals, the position is occupied by an A. This means that there is an SNP at this specific position, and the two possible nucleotide variations – C or A – are said to be alleles for this position "

- ** Allele Frequency: **
  - (Within a genome)
" The genomic distribution of SNPs is not homogenous; SNPs occur in non-coding regions more frequently than in coding regions or, in general, where natural selection is acting and "fixing" the allele (eliminating other variants) of the SNP that constitutes the most favorable genetic adaptation.
Other factors, like genetic recombination and mutation rate, can also determine SNP density.
SNP density can be predicted by the presence of microsatellites: AT microsatellites in particular are potent predictors of SNP density, with long (AT)(n) repeat tracts tending to be found in regions of significantly reduced SNP density and low GC content. "

  - (Within a population)
  " There are variations between human populations, so a SNP allele that is common in one geographical or ethnic group may be much rarer in another. Within a population, SNPs can be assigned a minor allele frequency — the lowest allele frequency at a locus that is observed in a particular population. This is simply the lesser of the two allele frequencies for single-nucleotide polymorphisms." 

[ Wiki SNPs ref ]( https://en.wikipedia.org/wiki/Single-nucleotide_polymorphism ) 

### In Sim object:

- `$data `
 Shows the data in matrix form 
 nrow -> mapes to no of observations
 ncol -> mapes to no. of SNPs

> %%%%% Question %%%%%
 NB: values inside are 0 ,1 ,2 !! what it indicate ?
( Is it score for something ? if yes , What is it ? )

- `$cl`
  is a vector of length `n.obs` comprising the case-control status of the observations.
> %%%%% Question %%%%%
Q What is the " case-control status of the observations " ?

- `$tab.explain`
  a table naming the explanatory interactions and the numbers of cases and controls explained by     
  them. in other words it shows the output in tabular formate ;)

- `$ai`
  is a character vector naming the interactions.

> %%%%% Question %%%%%
Q I cant understand the representation meaning of the output !!!
eg : `SNP1 == 1  &  SNP2 != 1  &  SNP3 == 1`

- `$maf`
 is a vector of length `n.snp` containing the minor allele frequencies


### Main points Want to know 
- Does ` sim$data ` matrix `==` CADD pathoginicity Score matrix ?
- if yes, What are the `n.obs` & `n.snps` values we want the matrix to be ?
- and What are the `vec.ai` interactions order explains our case ?
 






