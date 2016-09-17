
myVector <- c("low", "high", "med", "low")

# Create a Factor
myFactor <- factor(myVector)
myFactor

# Create an ordered Factor
myOrderedFactor <- factor(myVector, levels = c("low", "med", "high"), ordered = TRUE)
myOrderedFactor 


attributes(myFactor)
attributes(myOrderedFactor)


# Data Frame
n <- c(2, 3, 5) 
s <- c("aa", "bb", "cc") 
b <- c(TRUE, FALSE, TRUE) 
df = data.frame(n, s, b) 


# A list can hold different types, even functions
f <- function(x) { return(x*2) }
myList <- list(TRUE, 123L, 6.5, c(1,2,3), f)

