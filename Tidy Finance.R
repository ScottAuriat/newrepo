# Tidy Finance using https://www.tidy-finance.org/index.html
# packages ----
library(tidyverse)
library(tidyquant)
library(quantmod)
# Chap 1 ----
DOW_ticker <- tq_index("DOW")
DOW_prices <- tq_get(DOW_ticker, from = "2000-01-01")

volume <- DOW_prices |>
  group_by(date) |>
  summarize(volume = sum(volume*close/1e9))

volume |>
  ggplot(aes(date,volume))+
  geom_line()

volume |>
  ggplot(aes(log(volume),log(lag(volume))))+
  geom_point()+geom_smooth(method="lm")+
  labs(x="natural log of volume")+
  theme_bw()
 version
 packageStatus()
