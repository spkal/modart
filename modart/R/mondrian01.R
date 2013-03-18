"mondrian01" <- 
function(nVLines = 4, nHLines = 3, nFill = 4, lineWidth = 2, colLine = "black",
	colFill = c("red", "blue", "yellow", "green"), nTryFill = 100)
{
	oldpar <- par(pty = "s")
	on.exit(par(oldpar))
	plot(0:100, 0:100, type = "n", axes = F, xlab = "", ylab = "")
	xHi <- numeric(nVLines)
	xLo <- rregular(nVLines, 0, 100 - lineWidth)
	for(i in seq(1, nVLines)) {
		#		xi <- runif(1, 0, 100)
		xi <- xLo[i]
		xpolyi <- c(xi, xi + lineWidth, xi + lineWidth, xi)
		ypolyi <- c(0, 0, 100, 100)
		xLo[i] <- xi
		xHi[i] <- xi + lineWidth
		polygon(xpolyi, ypolyi, col = colLine)
	}
	yHi <- numeric(nHLines)
	yLo <- rregular(nHLines, 0, 100 - lineWidth)
	for(i in seq(1, nHLines)) {
		#		yi <- runif(1, 0, 100)
		yi <- yLo[i]
		xpolyi <- c(0, 100, 100, 0)
		ypolyi <- c(yi, yi, yi + lineWidth, yi + lineWidth)
		yLo[i] <- yi
		yHi[i] <- yi + lineWidth
		polygon(xpolyi, ypolyi, col = colLine)
	}
	box(col = "black")
	colFillUse <- sample(colFill, nFill, rep = T)
	xUsed <- -1
	yUsed <- -1
	ox <- order(xHi)
	xHi <- c(0, xHi[ox], 100)
	xLo <- c(0, xLo[ox], 100)
	oy <- order(yHi)
	yHi <- c(0, yHi[oy], 100)
	yLo <- c(0, yLo[oy], 100)
	for(i in seq(1, nFill)) {
		new.p <- F
		n <- 0
		while(!new.p) {
			x1 <- sample(xHi[ - length(xHi)], 1)
			y1 <- sample(yHi[ - length(yHi)], 1)
			xUsed.p <- match(x1, xUsed, nomatch = 0) > 0
			yUsed.p <- match(y1, yUsed, nomatch = 0) > 0
			if(!(xUsed.p && yUsed.p)) {
				new.p <- T
				xUsed <- c(xUsed, x1)
				yUsed <- c(yUsed, y1)
			}
			n <- n + 1
			if(n > nTryFill)
				new.p <- T
		}
		x2 <- xLo[xLo > x1][1]
		y2 <- yLo[yLo > y1][1]
		polygon(c(x1, x2, x2, x1), c(y1, y1, y2, y2), col = colFillUse[
			i])
	}
	invisible(NULL)
}
