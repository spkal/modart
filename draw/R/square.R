"square"<-
function(p1, p2, size, color="blue", fill=TRUE) {
    if(missing(p2)) {
        x1 <- p1[1]
        x2 <- p1[1] + size
        y1 <- p1[2]
        y2 <- p1[2] + size
     } else {
        x1 <- p1[1]
        x2 <- p2[1]
        y1 <- p1[2]
        y2 <- p2[2]
     }
     density <- 1
     if(fill) {
         density <- -1
     }
     polygon(c(x1, x2, x2, x1, x1), c(y1, y1, y2, y2, y1), col=color,
         density=density)
}
