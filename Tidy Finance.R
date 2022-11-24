# Tidy Finance using https://www.tidy-finance.org/index.html
# packages ----
library(tidyverse)
library(tidyquant)
library(quantmod)
# Chap 1 ----

SNP500i <- tq_index("SP500")
SNP500 <- tq_get(SNP500i)

SNP500r <- SNP500 |>
  group_by(symbol) |>
  mutate(r = adjusted/lag(adjusted))|>
  select(symbol,date,r)

SNP500r <- drop_na(SNP500r,r)
SNP500r <- mutate(SNP500r,r = r*100)

volume <- SNP500 |>
  group_by(date) |>
  summarize(volume = sum(volume*close/1e9))

volume |>
  ggplot(aes(date,volume))+geom_line()

volume |>
  ggplot(aes(log(volume),log(lag(volume))))+geom_point()+
  labs(x="",y="",title = "Persistance of Volume")+
  theme_bw()+
  geom_abline(aes(intercept= 0,slope = 1))
