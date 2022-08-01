source("LoadData.R")


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(DateTime, Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(DateTime, Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(DateTime, Sub_metering_2, type="l", col="red")
lines(DateTime, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(DateTime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
