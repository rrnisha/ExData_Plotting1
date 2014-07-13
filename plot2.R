# Plot Global_active_power for Feb 01, 02

source("prepData.R")

doPlot2 <- function() {
  data <- prepData()
  png(filename="plot2.png", width=480, height=480)
  plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  dev.off()
}

doPlot2()