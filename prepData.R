prepData <- function() {
  
if (!file.exists("data.zip")) {
  download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                destfile="data.zip",
                method="curl")
  unzip("data.zip")
}

data <- read.table("household_power_consumption.txt", header=FALSE, skip=66637, nrows=2880, sep=";", na.strings="?")
names(data) <- names(read.csv("household_power_consumption.txt", nrows=1,sep=";"))

data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data

}