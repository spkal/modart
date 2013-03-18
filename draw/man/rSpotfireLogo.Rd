\name{rSpotfireLogo}
\alias{rSpotfireLogo}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
rSpotfireLogo(n = 10000., r = c(1., 0.75, 0.5, 0.25))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ ~~Describe \code{n} here~~ }
  \item{r}{ ~~Describe \code{r} here~~ }
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
function(n = 10000., r = c(1., 0.75, 0.5, 0.25))
{
	x <- runif(n, -1, 1)
	y <- runif(n, -1, 1)
	d <- sqrt(x^2 + y^2)
	p4 <- d < r[4]
	p3 <- !p4 & d < r[3]
	p2 <- !p4 & !p3 & d < r[2]
	p1 <- !p2 & !p3 & !p4 & d < r[1]
	plot(x[p1], y[p1], col = "blue", axes = FALSE, xlab = "", ylab = "")
	points(x[p3], y[p3], col = "red")
	invisible()
  }
}
\keyword{ ~kwd1 }% at least one, from $SHOME/splus/lib/X11/keywords (Unix)
                 % or $SHOME/help/BuildHelpFiles/keywords (Windows)
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
