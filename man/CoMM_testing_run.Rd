% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{CoMM_testing_run}
\alias{CoMM_testing_run}
\title{CoMM}
\usage{
CoMM_testing_run(stringname1, stringname2, stringname3, stringname4,
  stringname5, whCol, bw)
}
\arguments{
\item{stringname1}{prefix for eQTL genotype file with plink format (bim, bed).}

\item{stringname2}{prefix for GWAS genotype and phenotype file with plink format (bim, bed, fam).}

\item{stringname3}{gene expression file with full name.}

\item{stringname4}{covariates file for eQTL data.}

\item{stringname5}{covariates file for GWAS data, e.g. top 10 PCs.}

\item{whCol}{specify which phenotype is used in fam. For example, when whCol = 2, the seven-th column of fam file will be used as phenotype.}

\item{bw}{the number of downstream and upstream SNPs that are considered as cis-SNP within a gene.}
}
\value{
List of model parameters
}
\description{
CoMM to dissecting genetic contributions to complex traits by leveraging regulatory information.
}
\details{
\code{CoMM_testing_run} fits the CoMM model. It requires to provide plink binary eQTL genotype file (bim, bed)
the GWAS plink binary file (bim, bed, fam), gene expression file for eQTL.
}
\examples{
##Working with no summary statistics, no covariates and options
file1 = "1000G.EUR.QC.1";
file2 = "NFBC_filter_mph10";
file3 = "Geuvadis_gene_expression_qn.txt";
file4 = "";
file5 = "pc5_NFBC_filter_mph10.txt";
whichPheno = 1;
bw = 500000;

fm = CoMM_testing_run(file1,file2,file3, file4,file5, whichPheno, bw);

}
\author{
Jin Liu, \email{jin.liu@duke-nus.edu.sg}
}
