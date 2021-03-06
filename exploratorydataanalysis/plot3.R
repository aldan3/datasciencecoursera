# Exploratory Data Analysis
# Course Project # 1
# Plot # 3

library(data.table)
dt <- fread("household_power_consumption.txt")
ndx = (dt$Date=="1/2/2007" | dt$Date == "2/2/2007")

time <-strptime(paste(dt[ndx, Date], dt[ndx, Time], sep = " "),"%d/%m/%Y %H:%M:%S")

dev.off()
png("plot3.png", width = 480, height = 480)

plot(time, as.numeric(dt[ndx,Sub_metering_1]), type="l", col = "Black", xlab = "", ylab = "Energy sub metering")
lines(time, as.numeric(dt[ndx,Sub_metering_2]), type="l", col = "Red")
lines(time, as.numeric(dt[ndx,Sub_metering_3]), type="l", col = "Blue")

legend("topright" , c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black","red", "blue"), cex = 0.7)

dev.off()
