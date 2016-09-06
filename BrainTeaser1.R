# install.packages("gtools")
# help(package="gtools")

# Load package gtools
library(gtools)

# Create an ARRAY with numbers 1,2,3,4,5,6
c(1,2,3,4,5,6)

# Create a MATRIX with 2 rows and 3 cols, with data 1,2,3,4,5,6 
matrix(c(1,2,3,4,5,6), 2, 3)

# Create a MATRIX with all permutation of digits 1,2,3
m <- permutations(n = 3, r = 3)

m[1,]   # 1st row.  ARRAY of numbers
m[,2]   # 2nd col.  ARRAY of numbers
m[1,2]  # Value at row = 1 and col = 2.  ARRAY of 1 element

1:3       # Array with values 1,2,3
m[1:3,]   # Rows 1,2,3 

c(T,T,T,T,F,F)     # ARRAY of logical
m[c(T,T,T,T,F,F),] # Select rows 1,2,3,4

m[,1] + m[,2]              # ARRAY or Vector (Vectorize)
m[,1] + m[,2] == m[,3]     # Test rows (Vectorize)
m[m[,1] + m[,2] == m[,3],] # Select rows matching test

