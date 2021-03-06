\name{cholsolveAQinvAT}
\alias{cholsolveAQinvAT}
\title{Solve the equation X = AQ^{-1}t(A) under permutations}
\usage{
cholsolveAQinvAT(Q, A, Lp, P)
}
\arguments{
  \item{Q}{ignored (deprecated)}

  \item{A}{matrix}

  \item{Lp}{Permuted Cholesky factor of Q}

  \item{P}{the pivot matrix}
}
\value{
x solution to \code{X = AQ^{-1}t(A)}
}
\description{
This function is a wrapper of solve() for finding \code{X =
AQ^{-1}t(A)} when the permuted Cholesky factor of Q is
known. #'
}
\examples{
require(Matrix)
Q <- sparseMatrix(i=c(1,1,2,2),j=c(1,2,1,2),x=c(0.1,0.2,0.2,1))
X <- cholPermute(Q)
y <- matrix(c(1,2),2,1)
A <- y \%*\% t(y)
cholsolveAQinvAT(Q,A,X$Qpermchol,X$P)
}
\keyword{Cholesky}
\keyword{factor,}
\keyword{linear}
\keyword{solve}

