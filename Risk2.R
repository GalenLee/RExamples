
# install.packages("ggplot2")
library(ggplot2)

rolls <- expand.grid(1:6, 1:6, 1:6, 1:6, 1:6)

rolls$outcomes <- apply(rolls, 1, function(x) {
  att <- sort(x[1:3], decreasing = TRUE)
  def <- sort(x[4:5], decreasing = TRUE)
  return(ifelse(att[1] > def[1], 1, -1) + 
         ifelse(att[2] > def[2], 1, -1))
})

m <- mean(rolls$outcomes)

ggplot(data = rolls, aes(rolls$outcomes)) + 
  geom_histogram(binwidth = 1, boundary = -0.5, fill="lightblue", col = "black") +
  labs(title = "Outcomes: Attacker Rolls 3 Dice, Defender Rolls 2 Dice") +
  labs(x = sprintf("Attacker Outcome: EV = %f", m), y = "Count")
