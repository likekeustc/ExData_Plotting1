# download the zipfile data from the given link
# save it as power_consumption.zip
url = 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(url, 'power_consumption.zip', method='wget')

# unzip the data
unzip('power_consumption.zip')

# read in the txt data to R and call the data frame 'power'
power = read.table('household_power_consumption.txt', header=T, sep=';')
# paste the date and time strings together, 
# and convert the date time string into POSIXlt format
# then, delete the original Date and Time strings
power$DateTime = strptime(paste(power$Date, power$Time), '%d/%m/%Y %H:%M:%S')
power$Date = NULL
power$Time = NULL

# set the beginning and end time to truncate the data
# 2007/02/01 - 2007/02/02 (including 02/02, so before 02/03)
#
Time1 = strptime('2007-02-01', '%Y-%m-%d')
Time2 = strptime('2007-02-03', '%Y-%m-%d')

# truncate the records taken within in 2007/02/01 and 2007/02/02
# save the truncated records into new data frame named 'power2'
power2 = subset(power, DateTime>Time1&DateTime<Time2)
# convert all the numbers into 'numeric' from 'factor'
# 'factor' -> 'character' -> 'numeric'
power2$Global_active_power = as.numeric(as.character(power2$Global_active_power))
power2$Global_reactive_power = as.numeric(as.character(power2$Global_reactive_power))
power2$Global_intensity = as.numeric(as.character(power2$Global_intensity))
power2$Voltage = as.numeric(as.character(power2$Voltage))
power2$Sub_metering_1 = as.numeric(as.character(power2$Sub_metering_1))
power2$Sub_metering_2 = as.numeric(as.character(power2$Sub_metering_2))

