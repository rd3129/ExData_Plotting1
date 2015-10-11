
## Generating Plot 3

# load data
source('loadData.R')

head(TwoDayData)
# open device
png(filename='plot3.png',width=480,height=480,units='px')

columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(TwoDayData$SetTime, TwoDayData$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(TwoDayData$SetTime, TwoDayData$Sub_metering_2, col=columnlines[2])
lines(TwoDayData$SetTime, TwoDayData$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")

# close device
x<-dev.off()