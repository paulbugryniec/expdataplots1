## Exploratory Data Analysis, Week 1, plot3

library(lubridate)
##require(stats),require(graphics)

data<-read.table("/Users/petermerek/Desktop/Coursera/ExpDataAnalysis/household_power_consumption.txt",sep=";",na.strings="?",stringsAsFactors=TRUE,header=TRUE)

data$Date <- as.Date(data$Date,"%d/%m/%Y")
data1<-subset(data,data$Date=="2007-02-01" | data$Date=="2007-02-02" )
data1$DateTime <- paste(data1$Date, data1$Time)
data1$DateTime <- strptime(data1$DateTime, format = "%Y-%m-%d %H:%M:%S")

png(filename="plot4.png",width=480,height=480)
par(mfcol=c(2,2))
    
  plot(data1$DateTime, y=data1$Global_active_power, type="l",ylab="Global Active Power (kilowatts)",xlab="")                     ##upper left 
  plot(data1$DateTime, y=data1$Sub_metering_1, type="l",ylab="Global Active Power (kilowatts)",xlab="",col="black")              ## lower left
    lines(data1$DateTime,data1$Sub_metering_2, type="l", col="red")
    lines(data1$DateTime,data1$Sub_metering_3, type="l", col="blue")
    legend("topright",lwd=c(1,1,1),col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=.7,bty="n")
  plot(data1$DateTime, y=data1$Voltage, type="l",ylab="Global Active Power (kilowatts)",xlab="datetime")                         ##upper right
  plot(data1$DateTime, y=data1$Global_reactive_power, type="l",ylab="Global Active Power (kilowatts)",xlab="datetime")           ##lower right
dev.off()



