wholedata <- read.table("C:/Users/WEJDENE/Desktop/data exploratory/household_power_consumption.txt",sep=";")
names(wholedata) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
sub <- subset(wholedata, wholedata$Date=="1/2/2007" | wholedata$Date =="2/2/2007")
Globalpower <-as.numeric(as.character(sub$Global_active_power))
hist(Globalpower,col="red",main="Golbal Active Power",xlab = "Global Active Power(Kilowatts)")
dev.copy(png, file="C:/Users/WEJDENE/Desktop/data exploratory/ExData_Plotting1/project/plot1.png", width=480, height=480)

