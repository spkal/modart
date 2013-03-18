"rSpotfireLogo" <- 
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

