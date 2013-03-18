\name{nolan01}
\alias{nolan01}
\title{Draw Art Like Kenneth Nolan}
\description{
  Draw art like Kenneth Nolan's Air Beauty in the Portland Art Museum.
}
\usage{
nolan01(nBottomColor = 9, nTopColor = 9, colStripe =
    c("red", "blue", "orange", "orangered", "maroon", "lime",
        "purple", "green", "pink", "mintcream", "magenta"),
    stripePercent = 8)
}
\arguments{
  \item{nBottomColor}{number of colors at the bottom}
  \item{nTopColor}{number of colors at the top}
  \item{colStripe}{vector of colors to select from for the top and bottom}
  \item{stripePercent}{percentage of vertical image space used for
        top and bottom stripes}
}
\value{
  NULL
}
\author{Stephen Kaluzny <skaluzny@tibco.com>}
\examples{
nolan01()
}
\keyword{modart}
