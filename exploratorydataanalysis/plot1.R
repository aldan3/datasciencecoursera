# Exploratory Data Analysis
# Course Project # 1
# Plot # 1

library(data.table)
dt <- fread("household_power_consumption.txt")
ndx = (dt$Date=="1/2/2007" | dt$Date == "2/2/2007")

png("plot1.png", width = 480, height = 480)

hist(as.numeric(dt[ndx,Global_active_power]), col = "Red", main = "Global Active Power", xlab="Global Active Power (kilowatts)", ylab = "Frequency")

dev.off()
