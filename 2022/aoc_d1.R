# library 
library(tidyverse)

# read data
data = readLines("~/Desktop/aoc_2022_d1_p1.txt")
data = as.numeric(data)

# part 1: highest amount of calories
split(data, cumsum(is.na(data))) %>% sapply(sum, na.rm = TRUE) %>% max() 

# part 2: sum of highest 3 amount of calories
split(data, cumsum(is.na(data))) %>% sapply(sum, na.rm = TRUE) %>% sort() %>% tail(3) %>% sum()
