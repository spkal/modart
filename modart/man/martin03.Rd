\name{martin03}
\alias{martin03}
\title{Agnes Martin Untitled #3}
\description{
  Draw art like Agnes Martin's Untitled #3 which is in the Portland Art Museum.
}
\usage{
martin03(n = 10, m = 1.5)
}
\arguments{
  \item{n}{number of stripes}
  \item{m}{expansion factor for selecting the \code{n} grays.
           The \code{n} grays are a random sample from
           \code{gray.colors(n*m)}.
}
}
\value{
  NULL
}
\author{Stephen Kaluzny <skaluzny@tibco.com>}

\examples{
martin03()
}
\keyword{modart}
