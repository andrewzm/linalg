\name{Takahashi_Davis}
\alias{Takahashi_Davis}
\title{Compute the Takahashi equations}
\usage{
Takahashi_Davis(Q, return_perm_chol = 0, cholQp = matrix(0, 0, 0), P = 0)
}
\arguments{
  \item{Q}{precision matrix (sparse or dense)}

  \item{return_perm_chol}{if 1 returns the permuted
  Cholesky factor (not advisable for large systems)}

  \item{cholQp}{the permuted Cholesky factor of Q (if known
  already)}

  \item{P}{the pivot matrix (if known already)}
}
\value{
if return_perm_chol == 0, returns the partial matrix
inverse of Q, where the non-zero elements correspond to
those in the Cholesky factor. If !(return_perm_chol == 0),
returns a list with three elements, S (the partial matrix
inverse), Lp (the Cholesky factor of the permuted matrix)
and P (the permutation matrix)
}
\description{
This function is wrapper for the Takahashi equations
required to compute the marginal variances from the
Cholesky factor of a precision matrix. The equations
themselves are implemented in C using the SparseSuite
package of Timothy Davis.
}
\examples{
require(Matrix)
Q = sparseMatrix(i=c(1,1,2,2),j=c(1,2,1,2),x=c(0.1,0.2,0.2,1))
X <- cholPermute(Q)
S_partial = Takahashi_Davis(Q,cholQp = X$Qpermchol,P=X$P)
}
\references{
Yogin E. Campbell and Timothy A Davis (1995). Computing the
sparse inverse subset: an inverse multifrontal approach.
\url{http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.37.9276&rep=rep1&type=pdf}
}
\keyword{Cholesky}
\keyword{factor,}
\keyword{linear}
\keyword{solve}

