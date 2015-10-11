downloadURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
downloadFile <- "./household_power_consumption.zip"
household_power_consumption <- "./household_power_consumption.txt"
##
if (!file.exists(household_power_consumption)) {
  download.file(downloadURL, downloadFile)
  unzip(downloadFile, overwrite = T)
}

plotData <- read.table(household_power_consumption, header=T, sep=";", na.strings="?")

head(plotData)
## Filter data to examine how household energy usage varies over a 2-day period in February, 2007
TwoDayData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]


SetTime <-strptime(paste(TwoDayData$Date, TwoDayData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
TwoDayData <- cbind(SetTime, TwoDayData)

head(TwoDayData)
