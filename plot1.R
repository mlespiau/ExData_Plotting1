source("getDataset.R")
data <- getDataset()
png("plot1.png", height=480, width=480, bg="transparent")
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()