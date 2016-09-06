
rolls <- expand.grid(1:6, 1:6, 1:6, 1:6, 1:6)
x <- rolls[6028,]
att <- sort(x[1:3], decreasing = TRUE)
def <- sort(x[4:5], decreasing = TRUE)
outcome <- (ifelse(att[1] > def[1], 1, -1) + 
            ifelse(att[2] > def[2], 1, -1))


