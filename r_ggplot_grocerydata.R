library(dplyr)
library(ggplot2)
library(readxl)

myfile <- read_excel("C:\\hS\\GMMA\\860 Acquistion and Management of Data\\Session 2\\MMA_860_Grocery_Data.xlsx")

summary(myfile)
head(myfile)
str(myfile)

plot1 <- ggplot(myfile, aes(x = Distance_to_Store, y = Grocery_Bill)) + 
  geom_point() + 
  ggtitle("Grocery Bill vs Distance to Store")

plot1


plot2 <-ggplot(myfile, aes(x = N_Adults, y = Family_Income, group = N_Adults)) + 
  geom_boxplot() + 
  labs(x = "No. of adults", y = "Family Income", title = "Family income by number of adults")

plot2

plot3 <- ggplot(myfile, aes(x = Family_Income)) + 
  geom_histogram() + 
  labs(title = "Histrogram of family income")
plot3

plot4 <-ggplot(myfile, aes(x = Family_Size, y = Grocery_Bill)) + 
  geom_bar(stat = 'identity') + 
  labs(title = "Grocery bill versus family size")
plot4

plot5 <- ggplot(myfile, aes(x = Family_Income, y = Grocery_Bill, color = as.factor(Vegetarian) )) + 
  geom_point() + 
  labs(title = "Grocery_Bill vs FamilyIncome by Vegetarians")
plot5


