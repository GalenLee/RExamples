# install.packages("ggplot2")
# install.packages("gridExtra")
library(grid)
library(gridExtra)
library(ggplot2)

compare1 <- function(att, def) {
  return(ifelse(att[1] > def[1], 1, -1))
}

compare2 <- function(att, def) {
  return(ifelse(att[1] > def[1], 1, -1) + 
         ifelse(att[2] > def[2], 1, -1))
}

calcOutcome <- function(rolls, attDiceIdx, defDiceIdx, compareFun) {
  
  outcomes <- apply(rolls, 1, function(x) {
    att <- sort(x[attDiceIdx], decreasing = TRUE)
    def <- sort(x[defDiceIdx], decreasing = TRUE)
    return(compareFun(att, def))
  })

  return (as.data.frame(outcomes))
}


rolls32 <- expand.grid(1:6, 1:6, 1:6, 1:6, 1:6)
df32 <- calcOutcome(rolls32, 1:3, 4:5, compare2)
g32 <- ggplot(data=df32, aes(df32$outcomes)) + 
  geom_histogram(binwidth=1,boundary=-0.5, fill="lightblue", col="black") +
  labs(title="Attacker 3 Dice, Defender 2 Dice") +
  labs(x=sprintf("Attacker EV = %f", mean(df32$outcomes)), y="Count")

rolls31 <- expand.grid(1:6, 1:6, 1:6, 1:6)
df31 <- calcOutcome(rolls31, 1:3, 4:4, compare1)
g31 <- ggplot(data=df31, aes(df31$outcomes)) + 
  geom_histogram(binwidth=1,boundary=-0.5, fill="lightblue", col="black") +
  labs(title="Attacker 3 Dice, Defender 1 Die") +
  labs(x=sprintf("Attacker EV = %f x 2", mean(df31$outcomes)), y="Count")

rolls22 <- expand.grid(1:6, 1:6, 1:6, 1:6)
df22 <- calcOutcome(rolls22, 1:2, 3:4, compare2)
g22 <- ggplot(data=df22, aes(df22$outcomes)) + 
  geom_histogram(binwidth=1,boundary=-0.5, fill="lightpink", col="black") +
  labs(title="Attacker 2 Dice, Defender 2 Dice") +
  labs(x=sprintf("Attacker EV = %f", mean(df22$outcomes)), y="Count")

rolls21 <- expand.grid(1:6, 1:6, 1:6)
df21 <- calcOutcome(rolls22, 1:2, 3:3, compare1)
g21 <- ggplot(data=df21, aes(df21$outcomes)) + 
  geom_histogram(binwidth=1,boundary=-0.5, fill="lightblue", col="black") +
  labs(title="Attacker 2 Dice, Defender 1 Die") +
  labs(x=sprintf("Attacker EV = %f x 2", mean(df21$outcomes)), y="Count")

rolls12 <- expand.grid(1:6, 1:6, 1:6)
df12 <- calcOutcome(rolls12, 1:1, 2:3, compare1)
g12 <- ggplot(data=df12, aes(df12$outcomes)) + 
  geom_histogram(binwidth=1,boundary=-0.5, fill="lightpink", col="black") +
  labs(title="Attacker 1 Die, Defender 2 Dice") +
  labs(x=sprintf("Attacker EV = %f x 2", mean(df12$outcomes)), y="Count")

rolls11 <- expand.grid(1:6, 1:6)
df11 <- calcOutcome(rolls12, 1:1, 2:2, compare1)
g11 <- ggplot(data=df11, aes(df11$outcomes)) + 
  geom_histogram(binwidth=1,boundary=-0.5, fill="lightpink", col="black") +
  labs(title="Attacker 1 Die, Defender 1 Die") +
  labs(x=sprintf("Attacker EV = %f x 2", mean(df11$outcomes)), y="Count")

grid.arrange(g32, g31, g22, g21, g12, g11, ncol=2, nrow = 3, top = "Risk Attacker Outcomes")

# dev.off()

