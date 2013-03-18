"pacmanpie" <- 
function()
{
	x <- c(1, rep(1, 8), 1)
	pie(x, col = c("purple", rep("yellow", 8), "purple"), fg = "black")
	title(main = "\nPercentage of Chart Which Resembles Pac-man", cex = 1.2
		)
	key(-2., -2.1499999999999999, rectangles = list(c(1, 1), col = c(
		"yellow", "purple")), text = list(c("Resembles Pac-man", 
		"Does not resemble Pac-man"), col = c("black", "black"), cex = 
		1.3))
}

