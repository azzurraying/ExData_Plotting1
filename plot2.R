# Scatter (connected lines)
# Axes: Global active power (kilowatts) vs time

# Convert Time to POSIXct format.
# Note:
# weekdays(as.Date(as.character(power_Feb$Date), format = "%d/%m/%Y"))
# only converts the date. Need both date and time
datetime <- paste(as.character(power_Feb$Date), as.character(power_Feb$Time), sep = " ")
times <- strptime(datetime, format = "%d/%m/%Y %H:%M:%S")
power_Feb1 <- cbind(times, power_Feb)

png(file = "plot2.png") # open PNG device, create PNG file in working directory

with(power_Feb1, plot(times, as.numeric(as.character(Global_active_power)), # make plot
                     type = "l",
                     main = "Global Active Power",
                     xlab = "",
                     ylab = "Global active power (kilowatts)"))

dev.off() # close PNG file device