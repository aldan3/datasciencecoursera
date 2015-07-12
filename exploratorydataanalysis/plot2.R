# Exploratory Data Analysis
# Course Project # 1
# Plot # 2

library(data.table)
dt <- fread("household_power_consumption.txt")
ndx = (dt$Date=="1/2/2007" | dt$Date == "2/2/2007")

time <-strptime(paste(dt[ndx, Date], dt[ndx, Time], sep = " "),"%d/%m/%Y %H:%M:%S")

png("plot2.png", width = 480, height = 480)

plot(time, as.numeric(dt[ndx,Global_active_power]), type="l", xlab = "", ylab = "Global Active Power (kilowatt)")


dev.off()
