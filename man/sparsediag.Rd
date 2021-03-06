\name{sparsediag}
\alias{sparsediag}
\title{Create a sparse diagonal matrix}
\usage{
sparsediag(xx)
}
\arguments{
  \item{xx}{diagonal vector}
}
\description{
Creates a sparse diagonal matrix of length(xx) where xx is
the vector containing the elements on the diagonal
}
\examples{
require(Matrix)
Q <- sparsediag(c(1,2,3,4))
}

