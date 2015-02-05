# Plot 'Plot2', the line plot of Global Actie Power with date time
# Save it as 'Plot2.png' under 480x480 pixels png file
power2$Weekday = weekdays(power2$DateTime)
with(power2, plot(DateTime, Global_active_power, type='n',ylab='Global Active Power (kilowatts)', xlab = ''))
with(power2, lines(DateTime, Global_active_power))
dev.copy(png, file='Plot2.png', width=480, height=480)
dev.off()
