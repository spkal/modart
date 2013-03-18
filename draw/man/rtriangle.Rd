\name{rtriangle}
\alias{rtriangle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
rtriangle(side = 1, x0 = 0, y0 = 0, i = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{side}{ ~~Describe \code{side} here~~ }
  \item{x0}{ ~~Describe \code{x0} here~~ }
  \item{y0}{ ~~Describe \code{y0} here~~ }
  \item{i}{ ~~Describe \code{i} here~~ }
}
\details{
  ~~ If necessary, more details than the description above ~~
}
\value{
  ~Describe the value returned
  If it is a LIST, use
  \item{comp1 }{Description of 'comp1'}
  \item{comp2 }{Description of 'comp2'}
  ...
}
\references{ ~put references to the literature/web site here ~ }
\author{ ~~who you are~~ }
\note{ ~~further notes~~ 

 ~Make other sections like Warning with \section{Warning }{....} ~
}
\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(side = 1, x0 = 0, y0 = 0, i = NULL)
{
	xmat <- matrix(c(0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0), ncol
		 = 4)
	ymat <- matrix(c(0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0), ncol
		 = 4)
	ri <- if(is.null(i)) sample(1:4, 1) else i
	list(x = x0 + xmat[, ri], y = y0 + ymat[, ri])
  }
}
\keyword{ ~kwd1 }% at least one, from $SHOME/splus/lib/X11/keywords (Unix)
                 % or $SHOME/help/BuildHelpFiles/keywords (Windows)
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
