"plotrtriangles" <- 
function(n = 16, color = Blues)
{
	canvas(n)
	lines(c(0, 0, n, n, 0), c(0, n, n, 0, 0))
	for(i in 0:(n - 1)) {
		for(j in 0:(n - 1)) {
			# ii <- (i + j) %% 4 + 1
			ii <- NULL
			polygon(rtriangle(side = 1, x0 = i, y0 = j, ii), col = 
				sample(color,1))
		}
	}
}
