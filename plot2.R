## Getting full dataset
wholedata <- read.csv("C:/Users/WEJDENE/Desktop/data exploratory/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
wholedata$Date <- as.Date(wholedata$Date, format="%d/%m/%Y")

## Subsetting the data
data <- subset(wholedata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(wholedata)
## Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)
## plot 2
plot(data$Global_active_power~data$Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
## Saving to file
dev.copy(png, file="plot2.png", height=480, width=480)

