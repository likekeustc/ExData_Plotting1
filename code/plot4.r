# Plot 'Plot4', 4 panel plots
# Save it as 'Plot4.png' under 480x480 pixels png file
par(mfrow=c(2, 2))
#1
with(power2, plot(DateTime, Global_active_power, type='n', xlab='', ylab='Global Active Power'))
with(power2, lines(DateTime, Global_active_power))
#2
with(power2, plot(DateTime, Voltage, type='n', xlab='datetime', ylab='Voltage'))
with(power2, lines(DateTime, Voltage))
#3
with(power2, plot(DateTime, Sub_metering_1, xlab='', ylab='Energy\'s sub metering', type='n'))
with(power2, lines(DateTime, Sub_metering_1, col='black'))
with(power2, lines(DateTime, Sub_metering_2, col='red'))
with(power2, lines(DateTime, Sub_metering_3, col='purple'))
legend('topright', lty=1, col = c('black', 'red', 'purple'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
#4
with(power2, plot(DateTime, Global_reactive_power, xlab='date time', type='n'))
with(power2, lines(DateTime, Global_reactive_power, col='black'))
dev.copy(png, file='Plot4.png', width=480, height=480)
dev.off()
