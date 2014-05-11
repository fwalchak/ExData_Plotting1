Enter file contents here# Project 1 ---------------------------------------------------------------
setwd("C:/Users/F M Walchak/Dropbox/Coursera Courses/Exploratory Data Analysis")
household_power_consumption <- read.table("C:/Users/F M Walchak/Dropbox/Coursera Courses/
                                          Exploratory Data Analysis/household_power_consumption.txt", sep=";", quote="\"", )
View(household_power_consumption)
data <- household_power_consumption
summary(data)
str(data)

# Part 1 - Histogram Global Active Power (plot1.png)
hist(as.numeric(as.character(data$Global_active_power)), col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", xlim = c(0,6))
