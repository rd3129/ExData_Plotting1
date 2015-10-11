## Generating Plot 4

# load data
source('loadData.R')

# open device
png(filename='plot4.png',width=480,height=480,units='px')

# make 4 plots
par(mfrow=c(2,2))

# plot data on top left (1,1)
plot(TwoDayData$SetTime,TwoDayData$Global_active_power,ylab='Global Active Power',xlab='',type='l')

# plot data on top right (1,2)
plot(TwoDayData$SetTime,TwoDayData$Voltage,xlab='SetTime',ylab='Voltage',type='l')

# plot data on bottom left (2,1)
columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(TwoDayData$SetTime, TwoDayData$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(TwoDayData$SetTime, TwoDayData$Sub_metering_2, col=columnlines[2])
lines(TwoDayData$SetTime, TwoDayData$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")

# plot data on bottom right (2,2)
plot(TwoDayData$SetTime,TwoDayData$Global_reactive_power,xlab='SetTime',ylab='Global_reactive_power',type='l')

# close device
x<-dev.off()