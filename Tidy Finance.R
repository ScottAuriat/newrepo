# Tidy Finance using https://www.tidy-finance.org/index.html
# packages ----
library(tidyverse)
library(tidyquant)
library(quantmod)
# Chap 1 ----
DOW_ticker <- tq_index("DOW")
DOW_prices <- tq_get(DOW_ticker, from = "2000-01-01")

DOW_prices |> 
  ggplot(aes(date,adjusted,col = symbol))+
  geom_line()+ theme_void() +
  theme(legend.position = "none")+
  labs(x= "",y="", title = "DOW Jones")


