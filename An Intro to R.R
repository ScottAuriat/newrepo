# I am using https://intro2r.com/use_git.html
my_mat <- matrix(1:100,nrow = 10,byrow = T)
my_array <- array(1:100,dim = c(10,10,2))
list_1 <- list(c("this","that","why"),2,2,matrix(rep(0,100),nrow = 10),
               array(1:100,dim = c(5,5,4)))
list_2 <- list(list_1,seq(1:100))
list_2[2]

