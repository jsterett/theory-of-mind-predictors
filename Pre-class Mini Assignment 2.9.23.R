# 1. D2M messing around ####
library(tidyverse)
setwd("~/Desktop/D2M")
# reading in my csv file
read_csv("SterettD2M data.csv")
# assigning this function as thesisdata 
thesisdata <- read_csv("SterettD2M data.csv")
# looking at tibble of data
head(thesisdata)
# creating a table of age counts
table(thesisdata$Age)
# creating a table of demographic info
table(thesisdata$School)
table(thesisdata$Other_Languages)
table(thesisdata$Parent1_Education)
table(thesisdata$Parent2_Education)
table(thesisdata$Race_Ethnicity)
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
hist(Age, col = "slateblue1", main = "Participant Ages", xlab = "Age in Months", ylab = "Number of Participants")
summary(thesisdata$Age)
# assigning the function SNS for social network data
SNS <- thesisdata$SNS
# creating a histogram of social network sizes
hist(SNS, col = "skyblue1", main = "Social Network Size", xlab = "Number of Alters", ylab = "Number of Participants", ylim=c(0, 25))
# histogram of TOM performance
hist(`TOM_Average`, col = "skyblue1", main = "Behavioral Theory of Mind", xlab = "Scaling Theory of Mind tasks Average")
# histogram of CSUS performance
hist(`CSUS_Average`, col = "skyblue1", main = "Parent-Report Theory of Mind", xlab = "The Children's Social Understanding Scale Average Score")
# loading ggplot
library(ggplot2)
# assigning object to race/ethncity data
Race_Ethnicity <- thesisdata$Race_Ethnicity
# bar graph for racial/ethnicity demographics
ggplot(thesisdata, aes(Race_Ethnicity)) + geom_bar(fill = "darkseagreen3") + theme(axis.text.x = element_text(angle=45, hjust=1)) + xlab("Race or Ethnicity") + 
  ylab("Number of Participants")                 +
  ggtitle("Participant Race or Ethnicity") 
# correlation plot between age and csus
ggplot(data=thesisdata, aes(x=Age, y=`CSUS_Average`)) + geom_point(color="forestgreen") + 
  geom_smooth(color="black") + 
  labs(title="Correlation between Age and CSUS Average", y="Children's Social Understanding Scale Average", x="Age (Months)")

# correlation plot between tom and csus 
ggplot(data=thesisdata, aes(x=`TOM_Average`, y=`CSUS_Average`)) + geom_point() + 
  geom_smooth(color="black") +
  labs(title="Behavioral vs. Parent-Report Theory of Mind", 
       y="The Children's Social Understanding Scale (Average)", 
       x="Scaling Theory of Mind tasks (Average)") +
  theme_apa()+scale_color_viridis()

# correlation plot between tom and csus by school enrollment
ggplot(data=thesisdata, aes(x=`TOM_Average`, y=`CSUS_Average`, fill = `School`)) + geom_point() + 
  geom_smooth(color="black") +
  labs(title="Behavioral vs. Parent-Report Theory of Mind by School Enrollment", 
       y="The Children's Social Understanding Scale (Average)", 
       x="Scaling Theory of Mind tasks (Average)") +
  theme_apa()+scale_color_viridis()
  
# installing/loading viridis
install.packages("viridis")
library(viridis) 
# installing/loading jtools
install.packages("jtools")
library(jtools)
  
# assigning object to violent crime rate  
VCR <- thesisdata$VCR
# correlation plot between CSUS and violent crime rate 
ggplot(data=thesisdata, aes(x=`VCR`, y=`CSUS_Average`)) + geom_point()+geom_smooth(color="black") + labs(title = "Violent Crime Rate vs. Parent-Report Theory of Mind", y = "Children's Social Understanding Scale Average", x = "Violent Crime Rate")
# assigning object to birth order
Birth_Order <- thesisdata$Birth_Order
# birth order vs. TOM and CSUS boxplots
ggplot(data=thesisdata, aes(x=`Birth_Order`, y=`TOM_Average`)) + geom_boxplot()
ggplot(data=thesisdata, aes(x=`Birth_Order`, y=`CSUS_Average`)) + geom_boxplot()
# racial/ethnic vs. TOM and CSUS boxplots
ggplot(data=thesisdata, aes(x=`Race_Ethnicity`, y=`TOM_Average`))+ geom_boxplot()+ theme(axis.text.x = element_text(angle=45, hjust=1))
ggplot(data=thesisdata, aes(x=`Race_Ethnicity`, y=`CSUS_Average`))+ geom_boxplot()+ theme(axis.text.x = element_text(angle=45, hjust=1))
# sex vs. TOM and CSUS boxplots
Sex <- thesisdata$Sex
ggplot(data=thesisdata, aes(x=`Sex`)) + geom_bar(fill="slateblue1")
ggplot(data=thesisdata, aes(x=`Sex`, y=`TOM_Average`))+ geom_boxplot()
ggplot(data=thesisdata, aes(x=`Sex`, y=`CSUS_Average`))+ geom_boxplot()
# birth order vs. CSUS boxplots
ggplot(data=thesisdata, aes(x=Birth_Order, y=`CSUS_Average`))+ geom_boxplot()+labs(y="Children's Social Understanding Scale Average", x="Birth Order")
# age vs. SNS correlation
ggplot(data=thesisdata, aes(x=`Age`, y=`SNS`))+geom_point()+geom_smooth(color="black")

# assigning object to linguistic entropy
Linguistic_Entropy <- thesisdata$NetworkLinguisticEntropy
# assigning object to school enrollment status
School <- thesisdata$School
# correlation between linguistic entropy and TOM score 
ggplot(data=thesisdata, aes(x=`Linguistic_Entropy`, y=`TOM_Average`))+geom_point(geom_point)+geom_smooth(color="black")
# assigning object to racial/ethnic entropy
Race_Entropy <- thesisdata$NetworkRaceEntropy
# correlation between racial/ethnic entropy and TOM score
ggplot(data=thesisdata, aes(x=`Race_Entropy`, y=`TOM_Average`))+geom_point()+geom_smooth(color="black")
# assigning object to TOM_Average
TOM_Average <- thesisdata$TOM_Average
# assigning object to CSUS_Average
CSUS_Average <- thesisdata$CSUS_Average
# bar graph for birth order frequencies
ggplot(data=thesisdata, aes(x=`Birth_Order`)) + geom_bar(fill="slateblue1")
# bar graph for school enrollment frequencies
ggplot(data=thesisdata, aes(x=`School`)) + geom_bar(fill="slateblue1")
# loading kable package
library(kableExtra)
# correlation between CSUS and TOM scores
ggplot(thesisdata, aes(x=TOM_Average, y=CSUS_Average)) + geom_point()+ geom_smooth(color="black") 
+ labs(x="Scaling Theory of Mind tasks", y="The Children's Social Understanding Scale")
# installing papaja
install.packages("papaja")

# 2. Thesis cleaned up ####
# a. Demographics ####
# tables
table(thesisdata$Age)
table(thesisdata$School)
table(thesisdata$Other_Languages)
table(thesisdata$Parent1_Education)
table(thesisdata$Parent2_Education)
table(thesisdata$Race_Ethnicity)
table(thesisdata$Race_Ethnicity)
# histograms
ggplot(thesisdata, aes(Age)) + geom_density()
hist(Age, main = "Participant Ages", xlab = "Age in Months", ylab = "Frequency") + 
  theme_apa() + scale_color_viridis()

# b. Social Network ####
# histogram of social network sizes
hist(SNS, main = "Social Network Size", xlab = "Number of Alters", 
     ylab = "Number of Participants", ylim=c(0, 25)) +  theme_apa() + scale_color_viridis()

# c. CSUS ####
ggplot(thesisdata, aes(x=CSUS_Average)) + geom_histogram() + theme_apa()+scale_color_viridis()

# d. TOM ####
# histogram of TOM performance
hist(`TOM_Average`, main = "Behavioral Theory of Mind", 
     xlab = "Scaling Theory of Mind tasks (Average)") +
  theme_apa()+scale_color_viridis()
# e. Neighborhood ####

# f. Correlations ####
# correlation between TOM and CSUS
ggplot(data=thesisdata, aes(x=`TOM_Average`, y=`CSUS_Average`)) + geom_point() + 
  geom_smooth(color="black") +
  labs(title="Behavioral vs. Parent-Report Theory of Mind", 
       y="The Children's Social Understanding Scale (Average)", 
       x="Scaling Theory of Mind tasks (Average)") +
  theme_apa()+scale_color_viridis()

# correlation between SNS and CSUS
ggplot(thesisdata, aes(x=`SNS`, y=`CSUS_Average`)) + geom_point() + geom_smooth()+
  labs(title="Social Network Size vs. Theory of Mind",
       x="Social Network Size", y="Theory of Mind (Average)") + 
  theme_apa()+scale_color_viridis()

# correlation between VCR and CSUS
ggplot(thesisdata, aes(x=`VCR`, y=`CSUS_Average`)) + geom_point() + geom_smooth() +
  labs(title="Violent Crime Rate vs. Theory of Mind",
       x="Violent Crime Rate",
       y="Theory of Mind (Average)") + 
  theme_apa()+scale_color_viridis()

# boxplot between parent 1 education and csus
ggplot(thesisdata, aes(x=`Parent1_Education`, y=`CSUS_Average`)) + geom_boxplot() +
  labs(title="Parent 1 Education vs. Theory of Mind",
       x="Parent 1 Education",
       y="Theory of Mind (Average)") + 
  theme_apa()+scale_color_viridis()

# boxplots between birtn order and csus
ggplot(thesisdata, aes(x=`Birth_Order`, y=`CSUS_Average`)) + geom_boxplot() +
  labs(title="Birth Order vs. Theory of Mind",
       x="Birth Order",
       y="Theory of Mind (Average)") + 
  theme_apa()+scale_color_viridis()
