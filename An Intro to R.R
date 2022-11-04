# I am using https://intro2r.com/use_git.html
# to start over use rm(list = ls())
library(ggplot2)

x <- 1:10000
y <- .25*x + rnorm(10000,0,300)
z <- rep("a",10000)
z[5001:10000] <- "b"
zz <- factor(z)
dat <- data.frame(x,y,z,zz)

ggplot(dat,aes(x,y))+geom_point()+
  geom_smooth()
summary(lm(y~x,data=dat))
