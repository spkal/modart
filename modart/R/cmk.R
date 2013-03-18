"cmk"<-
function(k, n, p=n) {
   z<- lapply(vector("list", k), function(x, n, p) matrix(0, nr=n, nc=p),
      n=n, p=p)
   oldClass(z) <- "cmk"
   z
}
"rcmk"<-
function(z) {
   k <- length(z)
   n <- nrow(z[[1]])
   p <- ncol(z[[1]])
   cx <- sample(1:k, n*p, rep=TRUE)
   tdf <- data.frame(cx=factor(cx))
   mm <- model.matrix(~ cx-1, data=tdf, contrasts=list(cx=contr.treatment))
   for(i in 1:k) {
      z[[i]] <- matrix(mm[,i], nc=p, nr=n)
   }
   z 
}
"plot.cmk"<-
function(x, col=c("red", "green", "blue", "yellow", "orange", "violet"),
   cex=8) {
   k <- length(x)
   if(length(col) < k) stop("Need", k, "colors, only have", length(col))
   n <- nrow(x[[1]])
   p <- ncol(x[[1]])
   plot(c(1, p), c(1, n), type='n', axes=FALSE, xlab="", ylab="")
   for(i in seq(1, k)) {
      keep.p <- x[[i]] > 0
      xp <- col(x[[i]])[keep.p]
      yp <- row(x[[i]])[keep.p]
      points(xp, yp, col=col[i], cex=cex, pch=16)
   }
   invisible()
}
