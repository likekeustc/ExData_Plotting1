# Plot 'Plot3', the line plot of Energy sub metering 1, 2, 3 with date time
# Save it as 'Plot3.png' under 480x480 pixels png file
with(power2, plot(DateTime, Sub_metering_1, xlab='', ylab='Energy\'s sub metering', type='n'))
with(power2, lines(DateTime, Sub_metering_1, col='black'))
with(power2, lines(DateTime, Sub_metering_2, col='red'))
with(power2, lines(DateTime, Sub_metering_3, col='purple'))
legend('topright', lty=1, col = c('black', 'red', 'purple'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.copy(png, file='Plot3.png', width=480, height=480)
dev.off()
