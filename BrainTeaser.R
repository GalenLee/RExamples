# install.packages("gtools")
# help(package="gtools")

library(gtools)

df <- data.frame(permutations(9, 9))
df.a <- subset(df, 3 * (X1*1000 + X2*100 + X3*10 + X4) ==
                 (X5*10000 + X6*1000 + X7*100 + X8*10 + X9))

m <- permutations(9, 9)
m.a <- m[ 3 * (m[,1]*1000 + m[,2]*100 + m[,3]*10 + m[,4]) ==
            (m[,5]*10000 + m[,6]*1000 + m[,7]*100 + m[,8]*10 + m[,9]),] 
