"mylines"<-
function(n=100, ncol=13, nlwd=17, colorVec=colors()) {
	x1 <- runif(n)
	y1 <- runif(n)
	x2 <- runif(n)
	y2 <- runif(n)
	opar <- par(pty='s')
	on.exit(par(opar))
	plot(x1, y1, type='n', axes=F, xlab="", ylab="", xlim=c(0, 1),
		ylim=c(0, 1), xaxs="r", yaxs="r")
	box()
	segments(x1, y1, x2, y2, col=sample(colorVec,  ncol, rep=TRUE),
		lwd=runif(nlwd, 1, 10))
	invisible()
}
