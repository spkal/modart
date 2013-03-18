\name{plotrtriangle}
\alias{plotrtriangle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plotrtriangle(n = 16, color = "black")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ ~~Describe \code{n} here~~ }
  \item{color}{ ~~Describe \code{color} here~~ }
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
function(n = 16, color = "black")
{
	canvas(n)
	lines(c(0, 0, n, n, 0), c(0, n, n, 0, 0))
	for(i in 0:(n - 1)) {
		for(j in 0:(n - 1)) {
			# ii <- (i + j) \%\% 4 + 1
			ii <- NULL
			polygon(rtriangle(side = 1, x0 = i, y0 = j, ii), col = 
				color)
		}
	}
  }
}
\keyword{ ~kwd1 }% at least one, from $SHOME/splus/lib/X11/keywords (Unix)
                 % or $SHOME/help/BuildHelpFiles/keywords (Windows)
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
