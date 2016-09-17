# Create a simple vector.
# c stands for combine 
# 1:12 generates values from 1 to 12
myVar <- c(1:12)    
myVar

myMatrix <- matrix(1:12, 2, 6)
myMatrix

# Matrix is just a Vector with dim attribute
dim(myVar) <- c(2,6)
myVar


# Array with 3 dimensions
# Also set dimnames
dim(myVar) <- c(2,3,2)
dimnames(myVar)[[1]] <- list("R1","R2")
dimnames(myVar)[[2]] <- list("A","B", "C")
dimnames(myVar)[[3]] <- list("M1", "M2")
myVar

# dim and dimnames are attributes on vector
attributes(myVar)

# Back to simple vector
dim(myVar) <- NULL
myVar

# A scalar is just a vector with 1 element.
myVar <- 1
myVar



