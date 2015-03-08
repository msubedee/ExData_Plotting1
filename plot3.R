if (!"read_data.R" %in% list.files()) {
  setwd("C:/DataSpecialization_Coursera/ExploratoryDataAnalysis/ExData_Plotting1")
} 
source("read_data.R") # call the script to read data for plotting

##### Plot 3 ######

png("plot3.png", height = 480, width = 480)
with(subset_PowerCon, {
  plot(DateTime, Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = "") 
  lines(DateTime, Sub_metering_2, type = "l", col = "red") 
  lines(DateTime, Sub_metering_3, type = "l", col = "blue")
})

# defining the legend of plot
legend("topright", col = c("black", "blue", "red"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

dev.off() # close the PNG device