
##Data file path
FilePath <- "./data/household_power_consumption.txt"

Fulldata <- read.table(FilePath, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- Fulldata[Fulldata$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)

##png with file name
##Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels
png("plot2.png", width=480, height=480)

##Generic X-Y plot
## Y axis as "Global Active Power (kilowatts)"
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()