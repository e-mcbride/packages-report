## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
library(tidyverse); library(here)

frqtable_file <- (here("data", "add-on-packages-freqtable.csv"))

stopifnot(length(frqtable_file) == 1)

frqtable <- read_csv(frqtable_file) %>% as_tibble()


## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

## if you use ggplot2, code like this will work:
# ggplot(apt_freqtable, aes(x = Built, y = n)) +
#   geom_col()

ggplot(frqtable, aes(x = Built, y = n)) +
  geom_col()

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

ggsave(here("figs", "built-barchart.png"))

## YES overwrite the file that is there now
## that's old output from me (Jenny)
