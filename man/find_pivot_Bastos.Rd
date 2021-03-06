\name{find_pivot_Bastos}
\alias{find_pivot_Bastos}
\title{Pivoted Cholesky factorisation}
\usage{
find_pivot_Bastos(A)
}
\arguments{
  \item{A}{matrix (sparse or dense), the Cholesky factor of
  which needs to be found}
}
\value{
A list with two elements, R (the Cholesky factor) and piv
(the pivoting order)
}
\description{
Pivoted Cholesky (same as pivot=T when carrying out
Cholesky with dense matrices)
}
\details{
This function should just be used to verify the pivot=T
with dense matrices. Since it is an R implementation it is
much slower than that in the base package.
}
\examples{
find_pivot_Bastos(matrix(c(0.1,0.2,0.2,1),2,2))
}
\references{
Leonardo S. Bastos and A. O'Hagan (2007). Diagnostics for
Gaussian Process Emulators.
\url{www.tonyohagan.co.uk/academic/pdf/diagtech.pdf}
}
\keyword{Cholesky}
\keyword{factor}

