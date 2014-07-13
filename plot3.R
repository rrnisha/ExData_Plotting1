# Plot Sub_metering_1,2,3 for Feb 01, 02

source("prepData.R")

doPlot3 <- function() {
  data <- prepData()
  png(filename="plot3.png", width=480, height=480)
  plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(data$DateTime, data$Sub_metering_2, col="red")
  lines(data$DateTime, data$Sub_metering_3, col="blue")
  cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
  dev.off()
}

doPlot3()