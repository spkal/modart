"mclaughlin01" <- 
function(grayCol = sample(gray.colors(100), 1, rep = F), yellowCol = "yellow")
{
	oldpar <- par(mar = c(2, 2, 2, 2))
	on.exit(par(oldpar))
	plot(c(0, 10.5), c(0, 10.5), type = "n", xlab = "", ylab = "", axes = F
		)
	polygon(c(0.5, 3., 3., 0.5), c(0.75, 0.75, 9.75, 9.75), col = yellowCol
		)
	polygon(c(4., 6.5, 6.5, 4.), c(0.75, 0.75, 9.75, 9.75), col = grayCol)
	polygon(c(7.5, 10., 10., 7.5), c(0.75, 0.75, 9.75, 9.75), col = 
		yellowCol)
	box()
}

