library(readr)
library(tidyverse)

getwd()
china = read_csv("china.csv")

china

ggplot(data = china) +
  geom_point(mapping = aes(x =SO2_dep, y = Revenue_loss))



