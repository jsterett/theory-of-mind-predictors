# loading tidyverse
library(tidyverse)
# assigning function reading in data
mmdata <- read_csv("MM Data.csv")
# changing data to long form
mmdata.long <- read_csv("MM Data.csv") %>% 
  pivot_longer(cols = c("Red", "Green", "Blue", "Orange","Yellow", "Brown"),
      names_to = "Color", values_to = "Number")
# assigning function to object Color
Color <- mmdata.long$Color
# creating first box plot and filling colors
ggplot(mmdata.long, aes(x=`Color`, y=`Number`, fill = `Color`)) + geom_boxplot()
# creating second box plot and adding dot points
ggplot(mmdata.long, aes(x=`Color`, y=`Number`, fill = `Color`)) + geom_boxplot() + geom_jitter()
