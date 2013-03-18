"martin03" <- 
function(n = 10, m = 1.5)
{
	plot(c(0, 100), c(0, 100), type = "n", xlab = "", ylab = "", axes = F)
	gvec <- sample(gray.colors(n * m), n, rep = F)
	hlines <- c(0, rregular((n - 1), 0, 100), 100)
	for(i in seq(1, n)) {
		x1 <- 0
		x2 <- 100
		y1 <- hlines[i]
		y2 <- hlines[i + 1]
		polygon(c(x1, x2, x2, x1), c(y1, y1, y2, y2), col = gvec[i])
	}
}

