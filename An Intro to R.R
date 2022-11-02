# I am using https://intro2r.com/use_git.html
# to start over use rm(list = ls())
library(ggplot2)

X512 <- read_excel("D:/Dropbox/512.xlsx")
dat <- X512
dat <- dat[1:361,]

dat$Fid <- factor(dat$id)
dat$Ft <- factor(dat$t)
dat$Feu1 <- factor(dat$eu1)

ggplot() +geom_point(aes(lngdp,`growth rate`,shape = Ft),data= dat)+
  theme_bw()+
  facet_grid(~eu1)+
  geom_smooth(aes(lngdp,`growth rate`),data=dat, method = "lm",se=F)
