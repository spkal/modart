\name{arc}
\alias{arc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
arc(x, y, radius = 1, origin = c(0, 0), ..., n = 1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ ~~Describe \code{x} here~~ }
  \item{y}{ ~~Describe \code{y} here~~ }
  \item{radius}{ ~~Describe \code{radius} here~~ }
  \item{origin}{ ~~Describe \code{origin} here~~ }
  \item{\dots}{ ~~Describe \code{\dots} here~~ }
  \item{n}{ ~~Describe \code{n} here~~ }
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
function(x, y, radius = 1, origin = c(0, 0), ..., n = 1000)
{
	theta1 <- asin((x[1] - origin[1])/radius)
	theta2 <- asin((x[2] - origin[1])/radius)
	thetaSeq <- seq(theta1, theta2, length = n)
	xx <- radius * cos(thetaSeq)
	yy <- radius * sin(thetaSeq)
	lines(xx, yy, ...)
  }
}
\keyword{ ~kwd1 }% at least one, from $SHOME/splus/lib/X11/keywords (Unix)
                 % or $SHOME/help/BuildHelpFiles/keywords (Windows)
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
