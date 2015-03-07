# Type of graph: Histogram
# Title: Global Active Power
# Axes: Frequency vs time

png(file = "plot1.png") # open PNG device, create PNG file in working directory

hist(as.numeric(as.character(power_Feb$Global_active_power)), # make plot
     col = "red",
     main = "Global active power",
     xlab = "Global active power (kilowatts)",
     ylab = "Frequency")

dev.off() # close PNG file device