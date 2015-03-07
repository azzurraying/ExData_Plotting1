# Type of graph: Histogram
# Title: Global Active Power
# Axes: Frequency vs time

# Download and unzip file
setwd("/Users/yingjiang/Dropbox/Education/Coursera/Data_science_spec/Data_science_C4/Projects/Project01")
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, destfile = "household_power_consumption.zip", method = "curl")
unzip("household_power_consumption.zip")

# Read and subset data to the two days: 1/2/2007 and 2/2/2007
power <- read.table("household_power_consumption.txt")
days_wanted <- which(power$Date == "1/2/2007" | power$Date == "2/2/2007")
power_Feb <- power[days_wanted, ]

# Create plot
png(file = "plot1.png") # open PNG device, create PNG file in working directory

hist(as.numeric(as.character(power_Feb$Global_active_power)), # make plot
     col = "red",
     main = "Global active power",
     xlab = "Global active power (kilowatts)",
     ylab = "Frequency")

dev.off() # close PNG file device