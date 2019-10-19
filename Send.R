library(gtools)

m <- as.data.frame(permutations(n = 10, r = 8) - 1)
colnames(m) <- c("S", "E", "N", "D", "M", "O", "R", "Y")

m$send <- 1000 * m$S + 100 * m$E + 10 * m$N + m$D
m$more <- 1000 * m$M + 100 * m$O + 10 * m$R + m$E
m$money <- 10000 * m$M + 1000 * m$O + 100 * m$N + 10 * m$E + m$Y

answer1 <- m[m$send + m$more == m$money,]
answer2 <- answer1[answer1$M != 0,]
answer2

#    SEND
# +  MORE
# -------
# = MONEY