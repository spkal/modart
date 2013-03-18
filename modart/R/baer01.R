"baer01" <- 
function()
{
	oldpar <- par(pty = "s")
	on.exit(par(oldpar))
	plot(c(0, 100), c(0, 100), type = "n", axes = FALSE, xlab = "", ylab = 
		"")
	polygon(c(0, 100, 100, 0), c(0, 0, 100, 100), col = "black")
	polygon(c(4, 96, 96, 4), c(4, 4, 96, 96), col = "yellow")
	polygon(c(5, 95, 95, 5), c(5, 5, 95, 95), col = "white")
	box()
	invisible(NULL)
}

