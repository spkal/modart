\name{mclaughlin01}
\alias{mclaughlin01}
\title{Draw Art Like John Mclaughlin}
\description{
  Draw art like John Mclaughlin's xyzzy from te LACMA.
}
\usage{
mclaughlin01(grayCol = sample(gray.colors(100), 1, rep = F),
    yellowCol = "yellow")
}
\arguments{
  \item{grayCol}{color specification for the gray center bar.}
  \item{yellowCol}{color specification for the two yellow side bars.}
}
\value{
  NULL
}
\author{Stephen Kaluzny <skaluzny@tibco.com>}
\examples{
mclaughlin01()
}
\keyword{modart}
