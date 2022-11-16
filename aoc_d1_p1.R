library(tidyverse)

data = read.delim("~/Desktop/aoc_d1_p1.txt", header=F)
increase = sum(diff(data$V1) > 0)
increase
