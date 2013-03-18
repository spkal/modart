"triArt01" <- 
function(n = 5, col = c("red", "green", "blue"), lwd = rep(2, 3))
{
	canvas(2 * n)
	for(i in 1:n) {
		lines(rtriangle(i, i - 0.5, i - 0.5, 1), col = col[1], lwd = 
			lwd[1])
		lines(rtriangle(i, i - 0.5, i - 0.5, 2), col = col[2], lwd = 
			lwd[2])
		lines(rtriangle(i, i - 0.5, i - 0.5, 4), col = col[3], lwd = 
			lwd[3])
	}
	invisible(NULL)
}

