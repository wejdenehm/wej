wholedata <- read.table("C:/Users/WEJDENE/Desktop/data exploratory/household_power_consumption.txt",sep=";")

names(wholedata) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

data <- subset(wholedata,wholedata$Date=="1/2/2007" | wholedata$Date =="2/2/2007")

datetime <-strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

plot(datetime, as.numeric(data$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")

lines(datetime, as.numeric(data$Sub_metering_2), type="l", col="red")

lines(datetime, as.numeric(data$Sub_metering_3), type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

