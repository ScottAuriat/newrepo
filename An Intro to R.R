# I am using https://intro2r.com/use_git.html
# to start over use rm(list = ls())
x <- 1:100
y <- -50 + 3*x + rnorm(100,0,55)
plot(y,x)
summary(lm(y~x))
