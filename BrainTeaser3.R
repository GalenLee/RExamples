
# library(gtools)

# Using a DATAFRAME
df <- data.frame(permutations(9, 9))
df.a <- subset(df, 3 * (X1*1000 + X2*100 + X3*10 + X4) ==
                 (X5*10000 + X6*1000 + X7*100 + X8*10 + X9))

