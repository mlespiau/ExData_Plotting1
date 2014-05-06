getDataset <- function() {
  datasetUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"  
  if (!file.exists("data")) {
    dir.create("data");
  }
  destFile <- "./data/household_power_consumption.zip"
  if (!file.exists(destFile)) {
    download.file(datasetUrl, destfile=destFile, method="curl")
  }
  unzip(destFile, exdir="./data/", overwrite=TRUE)
  rawData <- read.csv("./data/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
  rawData$Date <- as.Date(rawData$Date, format="%d/%m/%Y")
  twoDaysData <- subset(rawData, Date >= "2007-02-01" & Date <= "2007-02-02")
}

