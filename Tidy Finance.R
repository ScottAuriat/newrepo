# Tidy Finance using https://www.tidy-finance.org/index.html
# packages ----
library(tidyverse)
library(tidyquant)
library(quantmod)
# Chap 1 ----

ticker <- tq_index("DOW")
ticker

index_prices <- tq_get(ticker,
                       get = "stock.prices",
                       from = "2000-01-01",
                       to ="2022-12-31"
                       )
