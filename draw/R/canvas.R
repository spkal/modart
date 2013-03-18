"canvas" <- 
function(n = 100, xlim = c(0, n), ylim = c(0, n), square = TRUE)
{
	if(square) {
		opar <- par(pty = "s", mar = c(1, 1, 1, 1) + 
			0.10000000000000001)
	}
	plot(xlim, ylim, xlab = "", ylab = "", type = "n", axes = F)
	invisible()
}

