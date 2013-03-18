"circle" <- 
function(r = 1, x0 = 0, y0 = 0, n = 300)
{
	theta <- seq(0, 2 * pi, length = n)
	x <- r * sin(theta)
	y <- r * cos(theta)
	list(x = x0 + x, y = y0 + y)
}

