\name{pbdDMAT-package}
\alias{pbdDMAT-package}
\docType{package}
\title{Distributed Matrix Methods}
\description{
  A package for dense distributed matrix computations. Includes the
  use of PBLAS and ScaLAPACK libraries via pbdSLAP, communicating 
  over MPI via the BLACS library and  pbdMPI.
}
\details{
\tabular{ll}{
  Package: \tab pbdDMAT\cr
  Type: \tab Package\cr
  License: \tab GPL\cr
  LazyLoad: \tab yes\cr
}
  This package requires an MPI library (OpenMPI, MPICH2, or LAM/MPI).
}
\references{
  Programming with Big Data in R Website:
  \url{http://r-pbd.org/}
}
\author{
  Drew Schmidt \email{schmidt AT math.utk.edu}, Wei-Chen Chen,
  George Ostrouchov, and Pragneshkumar Patel, with contributions
  from R Core team (some wrappers taken from the base and stats 
  packages).
}
\keyword{Package}
