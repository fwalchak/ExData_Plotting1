Enter file contents here# Project 1 ---------------------------------------------------------------
setwd("C:/Users/F M Walchak/Dropbox/Coursera Courses/Exploratory Data Analysis")
household_power_consumption <- read.table("C:/Users/F M Walchak/Dropbox/Coursera Courses/
      Exploratory Data Analysis/household_power_consumption.txt", sep=";", quote="\"", )
View(household_power_consumption)
data <- household_power_consumption
summary(data)
str(data)

# Part 3 - Time Series Submetering 1, 2, and 3 (plot3.png)
with(subsetData, plot(time, Sub_metering_1, type = "l",))
par(new=TRUE)
with(subsetData, plot(time, Sub_metering_2, type = "l", col = "red"))
par(new=TRUE)
with(subsetData, plot(time, Sub_metering_3, type = "l", col = "blue"))
