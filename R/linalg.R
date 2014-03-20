#' Linear algebraic routines
#'
#' This package provides a set of linear algebraic routines commonly needed for computing with 
#' GMRFs and spatial/spatio-temporal models in general. A key feature is that it allows for the 
#' use of a Matlab server to do external computations. This is useful for some hefty chol operations 
#' where performance with up-to-date BLAS packages is still lacking.
#'
#' @docType package
#' @export amd_Davis cholPermute cholsolve cholsolveAQinvAT emptySp Imat logdet sparsediag sparseinv_wrapper Takahashi_Davis Zeromat
#' @import Matrix
#' @useDynLib linalg
#' @name linalg
NULL



