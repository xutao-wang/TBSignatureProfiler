% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/OriginalModel.R
\name{.OriginalModel_Retraining}
\alias{.OriginalModel_Retraining}
\title{TB gene signatures require retraining}
\usage{
.OriginalModel_Retraining(input, useAssay, geneSignaturesName, BPPARAM)
}
\arguments{
\item{input}{A SummarizedExperiment object with gene symbols as the assay row names.}

\item{useAssay}{A character string or an integer specifying the assay in the \code{input}.
Used for the test SummarizedExperiment object. Default is 1, indicating the 
first assay in the \code{input}.}

\item{geneSignaturesName}{A character string/vector specifying the signature of interest.
Default is NULL. If geneSignaturesName is NULL, run all available gene signatures' original model in the package.}

\item{BPPARAM}{An instance inherited from \code{bplappy}. 
See \code{\link[BiocParallel]{bplapply}} for details.}
}
\description{
A function to obtain predicted score for TB gene signatures that required retraining of their original model.
}
\details{
Maertzdorf_4 and Maertzdorf_15 were trained using random forest to distinguish samples with active TB from healthy controls. 
Verhagen_10 was also trained using random forest to distinguish samples with active TB
from either latent infection or healthy controls. 
The random forest model was build using \code{\link[randomForest]{randomForest}}. \cr
Jacobsen_3 were trained using linear discriminatory analysis (LDA)
to distinguish samples with active TB from latent infection status.
Sambarey_HIV_10 were also trained using LDA to distinguish samples with active TB
from either latent infection, healthy control, or other disease (HIV).
The LDA model was build using \code{\link[MASS]{lda}}. \cr
Berry_OD_86 and Berry_393 were trained using K-nearest neighbors (KNN) model to
differentiate samples with active TB from latent infection status.
The KNN model was build using \code{\link[class]{knn}}. \cr
Suliman_RISK_4 and Zak_RISK_16 were trained using support vector machines (SVM)
to distinguish TB progressor from non-progressors. The input gene expression features 
for Suliman_RISK_4 used the paired ratio of GAS6/CD1C, SEPT4/BLK, SEPT4/CD1C, GAS6/BLK.
The SVM model was build using \code{\link[e1071]{svm}}.
}
