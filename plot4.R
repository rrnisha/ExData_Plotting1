# Plot Global_active_power for Feb 01, 02
# Plot Voltage for Feb 01, 02
# Plot Sub_metering_1,2,3 for Feb 01, 02
# Plot Global_reactive_power for Feb 01, 02

source("prepData.R")

doPlot4 <- function() {
  data <- prepData()
  png(filename="plot4.png", width=480, height=480)
  par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(2,0,2,0))
  
  plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  
  plot(data$DateTime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(data$DateTime, data$Sub_metering_2, col="red")
  lines(data$DateTime, data$Sub_metering_3, col="blue")
  cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
  
  plot(data$DateTime, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
  
  dev.off()
}

doPlot4()
