
# load data
source('loadData.R')

## Generating Plot 1
png(filename='plot1.png', width=480, height=480, units='px')

hist(TwoDayData$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")

dev.off()

