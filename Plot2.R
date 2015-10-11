# load data
source('loadData.R')

head(TwoDayData)
# open device
png(filename='plot2.png',width=480,height=480,units='px')

# plot data
plot(TwoDayData$SetTime,TwoDayData$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# close device
x<-dev.off()