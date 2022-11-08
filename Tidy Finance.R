# Tidy Finance using https://www.tidy-finance.org/index.html
# packages ----
library(tidyverse)
library(tidyquant)
library(quantmod)

# Chap 1 ----
prices <- tq_get("AAPL",from = "2000-01-10" )

prices |> ggplot(aes(date,adjusted))+geom_line()+
  labs(x= "",y="", title = "Apple since 2000")

rerturns <- prices |>
  arrange(date)|>
  mutate(r = adjusted/lag(adjusted) - 1) |>
  select(symbol,date,r)
