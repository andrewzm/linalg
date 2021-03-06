\name{Zeromat}
\alias{Zeromat}
\title{Create an empty sparse matrix}
\usage{
Zeromat(ni, nj = NULL)
}
\arguments{
  \item{ni}{number of rows}

  \item{nj}{number of columns. If NULL a square matrix is
  produced}
}
\description{
Creates an empty sparse matrix of size ni x nj
}
\examples{
require(Matrix)
Q <- Zeromat(2,5)
}

