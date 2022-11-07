# I am using https://intro2r.com/use_git.html
# to start over use rm(list = ls())
library(ggplot2)
x <- data.frame(matrix(round(runif(100,-10,10),0),nrow = 10))
ggplot(x,aes(x[,1],x[,2]))+geom_point()
