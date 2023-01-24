# Tidy Finance using https://www.tidy-finance.org/index.html
# packages ----
library(tidyverse)
library(tidyquant)
library(quantmod)
# Chap 1 ----

DOW <- tq_index("DOW")
DOW <- tq_get(DOW,
              from = "2000-01-01")

DOWr <- DOW |>
  group_by(symbol) |>
  mutate(r = adjusted/lag(adjusted))|>
  select(symbol, date,r) |>
  drop_na(r)

DOW |> ggplot(aes(date,adjusted,col = symbol)) +geom_line()+
  labs(x="",y="",title= "DOW")+
  theme_bw()+
  theme(legend.position = "none")+
  geom_hline(yintercept = 100)

## test What else 