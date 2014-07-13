# Histogram for Global_active_power

source("prepData.R")

doPlot1 <- function() {
  data <- prepData()
  png(filename="plot1.png", width=480, height=480)
  hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
  dev.off()
}

doPlot1()

