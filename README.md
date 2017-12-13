# PCA-on-SNPs
This repo implements PCA approch on pathogenicity scores of SNPs mapable to a defined geneset, but the data are simulated from R-package called `Scrime`.

## Files List with describtion 
- `simulateSNPs-examples.R`
  - " contains some examples about how to use simulate SNPS funcrion and how to access all the resultant object componants  "
- `pca-on-snps.R`
  - " contains applied pca on simulated snps data "

## In ` simulateSNPs-examples.R `

Q How to simulate SNPs data using "Scrime" ?

1. [ Function documentation on Github ]( https://github.com/cran/scrime/blob/master/man/simulateSNPs.Rd ) 
2. [Scrime package documentation ]( https://cran.r-project.org/web/packages/scrime/scrime.pdf )

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
    
> Q didnt get `vec.ia` !!! ( Q in another way )
" How i know the order of interactions ? "

#### Q What is "allele frequency of each SNP" ? [ Wiki SNPs reference ]( https://en.wikipedia.org/wiki/Single-nucleotide_polymorphism )
- _alleles mean_
 - " For example, at a specific base position in the human genome, the C nucleotide may appear in most individuals, but in a minority of individuals, the position is occupied by an A. This means that there is an SNP at this specific position, and the two possible nucleotide variations – C or A – are said to be alleles for this position "

- _Allele Frequency_
  - __(Within a genome)__
" The genomic distribution of SNPs is not homogenous; SNPs occur in non-coding regions more frequently than in coding regions or, in general, where natural selection is acting and "fixing" the allele (eliminating other variants) of the SNP that constitutes the most favorable genetic adaptation.
Other factors, like genetic recombination and mutation rate, can also determine SNP density.
SNP density can be predicted by the presence of microsatellites: AT microsatellites in particular are potent predictors of SNP density, with long (AT)(n) repeat tracts tending to be found in regions of significantly reduced SNP density and low GC content. "

  - __(Within a population)__
  " There are variations between human populations, so a SNP allele that is common in one geographical or ethnic group may be much rarer in another. Within a population, SNPs can be assigned a minor allele frequency — the lowest allele frequency at a locus that is observed in a particular population. This is simply the lesser of the two allele frequencies for single-nucleotide polymorphisms." 

### In Sim object:

- `$data `
 Shows the data in matrix form 
 nrow -> mapes to no of observations
 ncol -> mapes to no. of SNPs

> NB: values inside are 0 ,1 ,2 !! what it indicate ?
( Is it score for something ? if yes , What is it ? )

- `$cl`
  is a vector of length `n.obs` comprising the case-control status of the observations.
> Q What is the " case-control status of the observations " ?

- `$tab.explain`
  a table naming the explanatory interactions and the numbers of cases and controls explained by     
  them. in other words it shows the output in tabular formate ;)

- `$ai`
  is a character vector naming the interactions.

> Q I cant understand the representation meaning of the output !!!
eg : `SNP1 == 1  &  SNP2 != 1  &  SNP3 == 1`

- `$maf`
 is a vector of length `n.snp` containing the minor allele frequencies


### Main points Want to know 
- Q Does ` sim$data ` matrix `==` CADD pathoginicity Score matrix ?
- if yes, Q What are the `n.obs` & `n.snps` values we want the matrix to be ?
- and Q What are the `vec.ai` interactions order explains our case ?
 
## In `pca-on-snps.R`
[ PCA Helper link ](https://www.analyticsvidhya.com/blog/2016/03/practical-guide-principal-component-analysis-python/)

-  Step 1  : Generate simulated SNPs data
  - Simulate a data set containing 2000 observations `obs`(1000 cases and 1000 controls) and `snps` 100 SNPs , where `intr.vec <- c(3, 2, 2) `one three-way and two  two-way interactions are chosen randomly to be explanatory  for the case-control status.

- Step 2 : Apply PCA
  - Principal component analysis is a method of extracting important variables (in form of components) from a large set of variables available in a data set. It extracts low dimensional set of features from a high dimensional data set with a motive to capture as much information as possible.

- `prcomp(sim.snps$data, scale. = F)`
	- Appling pca by `prcomp` function 
	- Set parameter `scale. = T` to normalize the variables to have standard 	deviation equals to 1.
	- By default `center` , set it centers the variable to have mean equals to zero

- Resultant object `snp.comp` ,has 5 componants:
	- `[1] "sdev"     "rotation" "center"   "scale"    "x" `
	- `snp.comp$sdev`   -> eigen values
	- `snp.comp$rotation`  -> eigen vectors
	- `snp.comp$x`  -> scores 

	> x ? if retx is true the value of the rotated data (the centred (and scaled if requested) data multiplied by the rotation matrix) is returned. Hence, cov(x) is the diagonal matrix diag(sdev^2). For the formula method, napredict() is applied to handle the treatment of values omitted by the na.action. 

- Plot 3 princibal componants, using [Scatter 3D plot](http://www.sthda.com/english/wiki/amazing-interactive-3d-scatter-plots-r-software-and-data-visualization)
![Image of 3d plot result](https://github.com/Rana-ElRobi/PCA-on-SNPs/blob/pca/pca-plot.png)