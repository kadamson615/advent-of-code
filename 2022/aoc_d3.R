# advent of code 2022: day 3
# completed on dec 6 2022

# load packages
library(tidyverse)

# load data
input = read.delim("~/Desktop/day3.txt", header = F)

# part 1 
input$mid = as.integer(nchar(input$V1)/2) # find midpoint for each
input$comp1= substr(input$V1, 1, input$mid)
input$comp2 = substr(input$V1, input$mid + 1, input$mid * 2)

## work on finding common elements between compartment 1 and compartment 2
