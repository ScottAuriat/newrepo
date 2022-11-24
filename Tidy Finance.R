# Tidy Finance using https://www.tidy-finance.org/index.html
# packages ----
library(tidyverse)
library(tidyquant)
library(quantmod)
# Chap 1 ----
ETH <- tq_get("ETH-USD")
ETH |>
  ggplot(aes(date,adjusted))+geom_line(size=1.2,col= "blue")+
  labs(x="",y="",title = "Eth price since inception")+
  theme_bw()+geom_point(size=1, col = "red")

ETHr <- ETH |>
  arrange(date)|>
  mutate(r = adjusted/lag(adjusted)-1) |>
  select(symbol,date,r)
ETHr <- drop_na(ETHr,r)


