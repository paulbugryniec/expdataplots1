## Exploratory Data Analysis, Week 1, plot3

##library(lubridate)

data<-read.table("/Users/petermerek/Desktop/Coursera/ExpDataAnalysis/household_power_consumption.txt",sep=";",na.strings="?",stringsAsFactors=TRUE,header=TRUE)

data$Date <- as.Date(data$Date,"%d/%m/%Y")
data1<-subset(data,data$Date=="2007-02-01" | data$Date=="2007-02-02" )
data1$DateTime <- paste(data1$Date, data1$Time)
data1$DateTime <- strptime(data1$DateTime, format = "%Y-%m-%d %H:%M:%S")

png(filename="plot3.png",width=480,height=480)
plot(data1$DateTime, y=data1$Sub_metering_1, type="l",ylab="Global Active Power (kilowatts)",xlab="",col="black")
  lines(data1$DateTime,data1$Sub_metering_2, type="l", col="red")
  lines(data1$DateTime,data1$Sub_metering_3, type="l", col="blue")
  legend("topright",lwd=c(2,2,2),col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
dev.off()
