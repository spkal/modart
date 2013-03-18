plotcircles <- function(n=10, colorVec=Blues[-(1:30)]) {
    canvas()
    for(i in 1:n) {
       r <- runif(1, 1, 50)
       xcenter <- runif(1,0,100)
       ycenter <- runif(1,0,100)
       c <- circle(r, xcenter, ycenter, n=1000)
       lines(c, col=sample(colorVec, 1), lwd=2)
    }
}
