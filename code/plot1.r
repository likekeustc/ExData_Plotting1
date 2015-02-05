# Plot 'Plot1', the histogram of Global active power
# Save it as 'Plot1.png' under 480x480 pixels png file
hist(power2$Global_active_power, breaks= 12, col='red', xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power')
dev.copy(png, file='Plot1.png', width=480, height=480)
dev.off()
