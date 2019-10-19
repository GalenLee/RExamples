# Working script
# Just playing around with commands and packages
# rm(list=ls())

install.packages("combinat")
library()
library(combinat)
help(package="combinat")
?combn
search()
utils::combn(1:5,2)
combinat::combn(1:5,2)
permn(1:5)
detach("package:combinat")

install.packages("gtools")
help(package="gtools")
library(gtools)
permutations(5,5)
