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
  data <- read.csv("./data/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
}

