"sander01" <- 
function(sampleColors = TRUE, col = c("red", "violet", "#d70000", "purple",
	"darkred"))
{
	if(sampleColors) {
		col <- sample(Reds, 5, rep = FALSE)
	}
	oldpar <- par(pty = "s")
	on.exit(par(oldpar))
	plot(c(0, 80), c(0, 100), type = "n", axes = FALSE, xlab = "", ylab = 
		"")
	p1 <- list(x = c(0, 60, 60, 0), y = c(0, 0, 30, 30))
	polygon(p1, col = col[1])
	p2 <- list(x = c(60, 80, 80, 60), y = c(0, 0, 5, 5))
	polygon(p2, col = col[2])
	p3 <- list(x = c(0, 60, 60, 0), y = c(30, 30, 100, 100))
	polygon(p3, col = col[3])
	p4 <- list(x = c(60, 80, 80, 60), y = c(5, 5, 75, 75))
	polygon(p4, col = col[4])
	p5 <- list(x = c(60, 80, 80, 60), y = c(75, 75, 100, 100))
	polygon(p5, col = col[5])
	box()
	invisible(NULL)
}

