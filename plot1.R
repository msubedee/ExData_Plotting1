if (!"read_data.R" %in% list.files()) {
  setwd("C:/DataSpecialization_Coursera/ExploratoryDataAnalysis/ExData_Plotting1")
} 
source("read_data.R") # call the script to read data for plotting

##### Plot 1 ######

# constructing the histogram and saving it to a PNG file 
png("plot1.png", height = 480, width = 480)
hist(subset_PowerCon$Global_active_power, main = "Global Active Power", col = "Red", xlab="Global Active Power (kilowatts)", ylab = "Frequency")
#dev.copy(png, file="plot1.png", height = 480, width = 480)
dev.off() # close the PNG device
