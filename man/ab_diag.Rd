\name{Diag}
\alias{Diag}
\docType{methods}

\alias{diag-method}
\alias{diag,ddmatrix-method}
\alias{diag,vector-method}
\alias{diag,character-method}
\alias{diag}

\title{ Distributed Matrix Diagonals }
\description{
  Get the diagonal of a distributed matrix, or construct a distributed
  matrix which is diagonal.
}
\section{Methods}{
\describe{
\item{\code{signature(x = "ddmatrix")}}{}
\item{\code{signature(x = "vector")}}{}
\item{\code{signature(x = "character")}}{}
}
}
\usage{
  \S4method{diag}{ddmatrix}(x)
  \S4method{diag}{vector}(x, nrow, ncol, type = "matrix", ..., 
                          bldim = .BLDIM, ICTXT = .ICTXT)
  \S4method{diag}{character}(x, nrow, ncol, type = "matrix", ..., 
                             min = 0, max = 1, mean = 0, sd = 1,
                             rate = 1, shape, scale = 1, 
                             bldim = .BLDIM, ICTXT = .ICTXT)
}
\arguments{
  \item{x}{distributed matrix or a vector.}
  \item{nrow,ncol}{in the case that \code{x} is a vector, these specify
  the global dimension of the diagonal distributed matrix to be created.}
  \item{type}{character. Options are 'matrix' or 'ddmatrix', with partial
  matching.  This specifies the return type.}
  \item{...}{Extra arguments}
  \item{min, max}{Min and max values for random uniform generation.}
  \item{mean,sd}{Mean and standard deviation for random normal generation.}
  \item{rate}{Rate for random exponential generation.}
  \item{shape,scale}{Shape and scale parameters for random weibull generation.}
  \item{bldim}{blocking dimension.}
  \item{ICTXT}{BLACS context number.}
}
\details{
  Gets the diagonal of a distributed matrix and stores it as a 
  global R vector owned by all processes.
}
\value{
  If a distributed matrix is passed to \code{diag()} then it returns a 
  global R vector.
  
  If a vector (numeric or character) is passed to \code{diag()} and 
  \code{type='ddmatrix'}, then the return is a diagonal distributed matrix.
}
\seealso{
  \code{\link{Extract}}
}
\examples{
\dontrun{
# Save code in a file "demo.r" and run with 2 processors by
# > mpiexec -np 2 Rscript demo.r

library(pbdDMAT, quiet = TRUE)
init.grid()

# don't do this in production code
x <- matrix(1:16, 4)
x <- as.ddmatrix(x)

y <- diag(x)
comm.print(y)

finalize()
}
}
\keyword{Methods}
\keyword{Extraction}
