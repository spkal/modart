hh <- paste(rep(c(0:9, letters[1:6]), each = 16), rep(c(0:9, letters[1:6]),
        16), sep = "")
Reds <- paste("#", hh, "0000", sep="")[-(1:66)]
Greens <- paste("#00", hh, "00", sep="")[-(1:64)]
Blues <- paste("#0000", hh, sep="")[-(1:64)]
