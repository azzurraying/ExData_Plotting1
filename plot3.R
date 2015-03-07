# 3 scatter graphs (connected lines)
# Energy sub metering (Sub_metering_1 to 3) vs time

png(file = "plot3.png") # open PNG device, create PNG file in working directory

with(power_Feb1, plot(times, as.numeric(as.character(Sub_metering_1)), 
                      type = "l",
                      xlab = "",
                      ylab = "Energy sub metering")) # Make first plot

with(power_Feb1, points(times, as.numeric(as.character(Sub_metering_2)),
                        col = "red",
                        type = "l")) # Add plot
                    
with(power_Feb1, points(times, as.numeric(as.character(Sub_metering_3)),
                        col = "blue",
                        type = "l")) # Add plot

legend("topright",
       col = c("black", "blue", "red"),
       lty = 1,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")) # Annotate

dev.off() # close PNG file device