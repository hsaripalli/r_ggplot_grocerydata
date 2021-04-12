#load libraries

library(dplyr)
library(ggplot2)
library(readxl)


# read excel file with the sample dataset

myfile <- read_excel("C:\\hS\\GMMA\\860 Acquistion and Management of Data\\Session 2\\MMA_860_Grocery_Data.xlsx")


#inspect data

summary(myfile)
head(myfile)
str(myfile)



#Scatterplot of grocery bill and distance to store

plot1 <- ggplot(myfile, aes(x = Distance_to_Store, y = Grocery_Bill)) + 
  geom_point() + 
  ggtitle("Grocery Bill vs Distance to Store")

plot1


#box plot of family income and no of adults in the family

plot2 <-ggplot(myfile, aes(x = N_Adults, y = Family_Income, group = N_Adults)) + 
  geom_boxplot() + 
  labs(x = "No. of adults", y = "Family Income", title = "Family income by number of adults")

plot2

#Histogram of family income

plot3 <- ggplot(myfile, aes(x = Family_Income)) + 
  geom_histogram(binwidth = 10000) + 
  labs(title = "Histrogram of family income")
plot3

#bar plot of grocery bill vs family size
## By default, geom_bar uses stat="bin". This makes the height of each bar equal to the number of cases in each group,
##and it is incompatible with mapping values to the y aesthetic. 
##If you want the heights of the bars to represent values in the data, 
##use stat="identity" and map a value to the y aesthetic.

plot4 <-ggplot(myfile, aes(x = Family_Size, y = Grocery_Bill)) + 
  geom_bar(stat = 'identity') + 
  labs(title = "Grocery bill versus family size")
plot4


# visualize family income, grocery bill, and vegetarians in one chart
plot5 <- ggplot(myfile, aes(x = Family_Income, y = Grocery_Bill, color = as.factor(Vegetarian) )) + 
  geom_point() + 
  labs(title = "Grocery_Bill vs FamilyIncome by Vegetarians")
plot5


