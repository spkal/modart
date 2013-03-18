"arc" <- 
function(x, y, radius = 1, origin = c(0, 0), ..., n = 1000)
{
	theta1 <- asin((x[1] - origin[1])/radius)
	theta2 <- asin((x[2] - origin[1])/radius)
	thetaSeq <- seq(theta1, theta2, length = n)
	xx <- radius * cos(thetaSeq)
	yy <- radius * sin(thetaSeq)
	lines(xx, yy, ...)
}

