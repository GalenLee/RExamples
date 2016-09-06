# TWO LINES OF CODE IN R

m <- permutations(n = 9, r = 9)
m.a <- m[ 3 * (m[,1]*1000 + m[,2]*100 + m[,3]*10 + m[,4]) ==
            (m[,5]*10000 + m[,6]*1000 + m[,7]*100 + m[,8]*10 + m[,9]),] 


