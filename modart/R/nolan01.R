"nolan01" <- 
function(nBottomColor = 9, nTopColor = 9, colStripe = c("red", "blue", "orange",
	"orangered", "maroon", "lime", "purple", "green", "pink", "mintcream",
	"magenta"), stripePercent = 8)
{
	plot(c(0, 100), c(0, 100), type = "n", xlab = "", ylab = "", axes = F)
	polygon(c(0, 100, 100, 0), c(stripePercent, stripePercent, 100 - 
		stripePercent, 100 - stripePercent), col = "yellow")
	ylo <- c(0, rregular(nBottomColor - 1, 0, stripePercent), stripePercent
		)
	colVec <- sample(colStripe, nBottomColor, rep = length(colStripe) <
		nBottomColor)
	for(i in 1:nBottomColor) {
		polygon(c(0, 100, 100, 0), c(ylo[i], ylo[i], ylo[(i + 1)],
			ylo[(i + 1)]), col = colVec[i])
	}
	yhi <- c(100 - stripePercent, (100 - stripePercent) + rregular(
		nTopColor - 1, 0, stripePercent), 100)
	colVec <- sample(colStripe, nTopColor, rep = length(colStripe) < 
		nTopColor)
	for(i in 1:nTopColor) {
		polygon(c(0, 100, 100, 0), c(yhi[i], yhi[i], yhi[(i + 1)],
			yhi[(i + 1)]), col = colVec[i])
	}
	invisible(NULL)
}

