Enter file contents here# Project 1 ---------------------------------------------------------------
setwd("C:/Users/F M Walchak/Dropbox/Coursera Courses/Exploratory Data Analysis")
household_power_consumption <- read.table("C:/Users/F M Walchak/Dropbox/Coursera Courses/
                                          Exploratory Data Analysis/household_power_consumption.txt", sep=";", quote="\"", )
View(household_power_consumption)
data <- household_power_consumption
summary(data)
str(data)

# Part 4 - Multipanel Graphic (plot4.png)
par(mfrow = c(2, 2))
with(subsetData, {
  plot(time, Global_active_power, type = "l", ylab = "Global Active Power")
  plot(time, Voltage, type = "l", xlab = "datatime", ylab = "Voltage")
  plot(time, Sub_metering_1, type = "l", ylab = "Energy sub metering")
  plot(time, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
}) 
