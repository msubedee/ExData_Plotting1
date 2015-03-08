if (!"read_data.R" %in% list.files()) {
  setwd("C:/DataSpecialization_Coursera/ExploratoryDataAnalysis/ExData_Plotting1")
} 
source("read_data.R") # call the script to read data for plotting

##### Plot 2 ######

# constructing the line plot and saving it to a PNG file
png("plot2.png", height = 480, width = 480)
with(subset_PowerCon, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))
dev.off() # close the PNG device