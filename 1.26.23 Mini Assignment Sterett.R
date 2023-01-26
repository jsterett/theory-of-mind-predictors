library(tidyverse)
adultdata <- read_csv("adult.data.csv")
library(ggplot2)
ggplot(adultdata, aes(age)) + geom_density()
ggplot(adultdata, aes(age)) + geom_histogram()
ggplot(adultdata, aes(age)) + geom_histogram(binwidth = 5)

ggplot(adultdata, aes(`education-num`)) + geom_density()
ggplot(adultdata, aes(`education-num`)) + geom_density(adjust = 2)
unique(adultdata$occupation)

# making first figure of capital gain histogram from adult data
ggplot(adultdata, aes(`capital-gain`)) + geom_histogram()

# making second figure of density plot for hours-per-week from adult data and then flipping the figure
ggplot(adultdata, aes(`hours-per-week`)) + geom_density() + coord_flip()
