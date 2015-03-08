if (!"read_data.R" %in% list.files()) {
  setwd("C:/DataSpecialization_Coursera/ExploratoryDataAnalysis/ExData_Plotting1")
} 
source("read_data.R") # call the script to read data for plotting

##### Plot 4 ######

png("plot4.png", height = 480, width = 480)
par(mfrow = c(2, 2)) # defining number of plots as 2 rows and columns

with(subset_PowerCon, {
  plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
  
  plot(DateTime, Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
  
  plot(DateTime, Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = "") 
  lines(DateTime, Sub_metering_2, type = "l", col = "red") 
  lines(DateTime, Sub_metering_3, type = "l", col = "blue")
  legend("topright", col = c("black", "blue", "red"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, bty = "n")
  
  plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime")
})

dev.off() # close the PNG device