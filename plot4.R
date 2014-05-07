source("getDataset.R")
data <- getDataset()
png("plot4.png", height=480, width=480, bg="transparent")
par(mfrow=c(2,2))
# Global Active Power Plot 
with(data, plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power"))
# Voltage Plot
with(data, plot(DateTime, Voltage, type="l", xlab="datetime", ylab="Voltage"))
# Energy sub metering Plot
with(data, plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
with(data, lines(DateTime, Sub_metering_2, col="red"))
with(data, lines(DateTime, Sub_metering_3, col="blue"))
legend("topright", lty=c(1,1,1), col=c("black", "blue","red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")
# Global Reactive Power Plot 
with(data, plot(DateTime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power"))
dev.off()