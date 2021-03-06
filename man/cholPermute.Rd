\name{cholPermute}
\alias{cholPermute}
\title{Sparse Cholesky Factorisation with fill-in reducing permutations}
\usage{
cholPermute(Q, method = "amd", matlab_server = NULL)
}
\arguments{
  \item{Q}{matrix (sparse or dense), the Cholesky factor of
  which needs to be found}

  \item{method}{If "amd", Timothy Davis SuiteSparse
  algorithm is used, if not that in the R Matrix package is
  employed}

  \item{matlab_server}{A matlab server initiated using the
  R.matlab package by Henrik Bengtsson. Sparse Cholesky
  factorisation in MATLAB is generally much faster than in
  R.}
}
\value{
A list with two elements, Qpermchol (the permuted Cholesky
factor) and P (the pivoting order matrix)
}
\description{
This function is similar to chol(A,pivot=T) when A is a
sparse matrix. The fill-in reduction permutation is the
approximate minimum degree permutation of Davis'
SuiteSparse package configured to be slightly more
aggressive than that in the Matrix package. If the Cholesky
factor fails, the matrix is coerced to be symmetric.
}
\examples{
require(Matrix)
cholPermute(sparseMatrix(i=c(1,1,2,2),j=c(1,2,1,2),x=c(0.1,0.2,0.2,1)))
}
\references{
Havard Rue and Leonhard Held (2005). Gaussian Markov Random
Fields: Theory and Applications. Chapman & Hall/CRC Press
}
\keyword{Cholesky}
\keyword{factor}

