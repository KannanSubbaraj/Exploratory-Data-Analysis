
##Data file path
FilePath <- "./data/household_power_consumption.txt"

##Read whole data
FullData <- read.table(FilePath, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- FullData[FullData$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)

##png with file name
##Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels
png("plot1.png", width=480, height=480)

## Compute histogram
## X axis as "Global Active Power (kilowatts)"
## Title as "Global Active Power"
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()