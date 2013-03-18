"albers01" <- 
function(color = c("teal", "gray", "orangered"))
{
	oldpar <- par(pty = "s", mar = c(2, 2, 2, 2))
	on.exit(par(oldpar))
	h1 <- 4.9000000000000004
	p1x <- c(5 - h1, 5 + h1, 5 + h1, 5 - h1)
	p1y <- c(5 - h1, 5 - h1, 5 + h1, 5 + h1)
	plot(c(0, 10), c(0, 10), type = "n", xlab = "", ylab = "", axes = F)
	polygon(p1x, p1y, col = color[1])
	h2 <- (h1 * 3)/4
	offv2 <- (h1 - h2)/2
	p2x <- c(5 - h2, 5 + h2, 5 + h2, 5 - h2)
	p2y <- c(5 - h2 - offv2, 5 - h2 - offv2, 5 + h2 - offv2, 5 + h2 - offv2
		)
	polygon(p2x, p2y, col = color[2])
	h3 <- (h2 * 3)/5
	offv3 <- (5 * (h2 - h3))/6
	p3x <- c(5 - h3, 5 + h3, 5 + h3, 5 - h3)
	p3y <- c(5 - h3 - offv3, 5 - h3 - offv3, 5 + h3 - offv3, 5 + h3 - offv3
		)
	polygon(p3x, p3y, col = color[3])
	box()
}

