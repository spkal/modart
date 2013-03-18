"rinhib" <- 
function(n, min = 0, max = 1, k = 1/(2 * n * (max - min)))
{
	x <- seq(min, max, length = n + 1)[ - (n + 1)]
	x + (max - min) * runif(n, 0, 1/n)
}

