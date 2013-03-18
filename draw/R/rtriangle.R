"rtriangle" <- 
function(side = 1, x0 = 0, y0 = 0, i = NULL)
{
	xmat <- matrix(c(0, 0, side, 0, 0, 0, side, 0, 0, side, side, 0, 0,
		side, side, 0), ncol = 4)
	ymat <- matrix(c(0, side, 0, 0, 0, side, side, 0, side, side, 0, side,
		0, side, 0, 0), ncol = 4)
	ri <- if(is.null(i)) sample(1:4, 1) else i
	list(x = x0 + xmat[, ri], y = y0 + ymat[, ri])
}

