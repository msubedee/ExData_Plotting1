# The R script for reading the data for plotting

if (!require("pryr")) {
  install.packages("pryr")
}
require("pryr")

# setting up the working directory and reading the text file
setwd("C:/DataSpecialization_Coursera/ExploratoryDataAnalysis/ExData_Plotting1")
PowerCon <- read.table("data_power_consumption/household_power_consumption.txt", header = T, sep = ";", na.strings = "?")

# calculating the size of memory the object occupies
object_size(PowerCon) 
mem_used()

# taking a look into data
dim(PowerCon)
colnames(PowerCon)
head(PowerCon)

# subsetting data from the dates 2007-02-01 and 2007-02-02
subset_PowerCon <- PowerCon[PowerCon$Date %in% c("1/2/2007","2/2/2007") ,]
head(subset_PowerCon)
dim(subset_PowerCon)

# converting the Date and Time variables to Date/Time classes
subset_PowerCon$DateTime <- strptime(paste(subset_PowerCon$Date, subset_PowerCon$Time), "%d/%m/%Y %H:%M:%S")
colnames(subset_PowerCon)