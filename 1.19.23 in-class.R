library(tidyverse)
setwd("~/Desktop/D2M")
# reading in my csv file
read_csv("SterettD2M.csv")
# assigning this function as thesisdata 
thesisdata <- read_csv("SterettD2M.csv")
# looking at tibble of data
head(thesisdata)
# creating a table of age counts
table(thesisdata$Age)
# creating a table of race/ethnicity counts
table(thesisdata$Race_Ethnicity)
# creating a summary for quartiles/median/mean of participant ages
summary(thesisdata$Age)
# creating a summary for quartiles/median/mean of mean participant scores on Theory of Mind tasks
summary(thesisdata$TOM_Average)
# creating a density plot of participant ages in months
ggplot(thesisdata, aes(Age)) + geom_density()
# assigning Age as the data regarding participant ages (months)
Age <- thesisdata$Age
# making a histogram of participant ages! very exciting to see!
hist(Age, col = "purple")
# changing Age from months to years 
thesisdata <- thesisdata %>%
  mutate(
    age.bins = case_when(
      Age <= 48 ~ "<= 4 years",
      Age > 48 & Age <= 54 ~ "4-4.5 years",
      Age > 54 & Age <= 60 ~ "4.5-5 years",
      Age > 60 & Age <= 66 ~ "5-5.5 years",
      Age > 66 & Age <= 72 ~ "5.5-6 years"
    )
  )
