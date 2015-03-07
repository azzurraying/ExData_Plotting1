# Scatter graphs (connected lines) in 4 panels
# Global Active Power, 
# Voltage, 
# Energy sub metering (Sub_metering_1 to 3), 
# Global_reactive_power vs time

png(file = "plot4.png") # open PNG device, create PNG file in working directory

par(mfrow = c(2, 2))
with(power_Feb1, {
    # First plot at (1, 1)
    plot(times, as.numeric(as.character(Global_active_power)),
         type = "l",
         xlab = "",
         ylab = "Global active power")
    
    # Second plot at (1, 2)
    plot(times, as.numeric(as.character(Voltage)),
         type = "l",
         xlab = "datetime",
         ylab = "Voltage")
    
    # Third plot at (2, 1)
    plot(times, as.numeric(as.character(Sub_metering_1)), 
         type = "l",
         xlab = "",
         ylab = "Energy sub metering") # Make first plot
        points(power_Feb1$times, as.numeric(as.character(power_Feb1$Sub_metering_2)),
               col = "red",
               type = "l") # Add plot
        points(power_Feb1$times, as.numeric(as.character(power_Feb1$Sub_metering_3)),
               col = "blue",
               type = "l") # Add plot
        legend("topright",
               col = c("black", "blue", "red"),
               lty = 1,
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               bty = "n") # Annotate
    
    # Fourth plot at (2, 2)
    plot(times, as.numeric(as.character(power_Feb1$Global_reactive_power)),
         type = "l",
         xlab = "datetime",
         ylab = "Global_reactive_power")
})

dev.off() # close PNG file device
