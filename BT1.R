# install.packages("gtools")
# help(package="gtools")

# Create a MATRIX with 2 rows and 3 cols, with data 1,2,3,4,5,6 
matrix(c(1,2,3,4,5,6), 2, 3)

# Load package gtools
# Create a MATRIX with all permutation of digits 1,2,3
library(gtools)
m <- permutations(n = 3, r = 3)

m[1,]   # 1st row.  Vector of numbers
m[,2]   # 2nd col.  Vector of numbers
m[1,2]  # Value at row = 1 and col = 2.  ARRAY of 1 element

1:3       # Vector with values 1,2,3
m[1:3,]   # Rows 1,2,3

c(T,T,T,T,F,F)     # Vector of logical
m[c(T,T,T,T,F,F),] # Select rows 1,2,3,4

m[,1] + m[,2]              # Vector (Vectorize)
m[,1] + m[,2] == m[,3]     # Test rows (Vectorize)
m[m[,1] + m[,2] == m[,3],] # Select rows matching test

