source("LoadData.R")



png("plot3.png", width=480, height=480)
plot(DateTime, Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(DateTime, Sub_metering_2, type="l", col="red")
lines(DateTime, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()


