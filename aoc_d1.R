# completed on nov 16 2022

# load packages
library(tidyverse)

# load data
data = read.delim("~/Desktop/aoc_d1_p1.txt", header=F)

# part 1: count number of increases
increase = sum(diff(data$V1) > 0)
increase

# part 2: count rolling sum of 3 measurements, and count number of increases from the rolling sums 
data_rolling_sum = zoo::rollsum(data$V1, 3)
increase2 = sum(diff(increase2) >0)
increase2
