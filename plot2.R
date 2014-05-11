Enter file contents here# Project 1 ---------------------------------------------------------------
setwd("C:/Users/F M Walchak/Dropbox/Coursera Courses/Exploratory Data Analysis")
household_power_consumption <- read.table("C:/Users/F M Walchak/Dropbox/Coursera Courses/
      Exploratory Data Analysis/household_power_consumption.txt", sep=";", quote="\"", )
View(household_power_consumption)
data <- household_power_consumption
summary(data)
str(data)

# Part 2 - Time Series Global Active Power (plot2.png)
subsetData1 <- subset(data, Date == '1/2/2007')
subsetData2 <- subset(data, Date == '2/2/2007')
subsetData <- rbind(subsetData1, subsetData2)
str(subsetData)
head(subsetData)
time <- strptime(paste(subsetData$Date, subsetData$Time), "%d/%m/%Y %H:%M:%S")
with(subsetData, plot(time, Global_active_power, type ="l", 
                      ylab = "Global Active Power (kilowatts)"))
