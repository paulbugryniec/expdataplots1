setwd("/Users/petermerek/Desktop/Coursera/ExpDataAnalysis")
library(lubridate)

data<-read.table("/Users/petermerek/Desktop/Coursera/ExpDataAnalysis/household_power_consumption.txt",sep=";",na.strings="?",stringsAsFactors=TRUE,header=TRUE)

data$Date <- as.Date(data$Date,"%d/%m/%Y")
data1<-subset(data,data$Date=="2007-02-01" | data$Date=="2007-02-02" )
data1$DateTime <- paste(data1$Date, data1$Time)
data1$DateTime <- strptime(data1$DateTime, format = "%Y-%m-%d %H:%M:%S")

png(filename="plot2.png",width=480,height=480)
plot(data1$DateTime, y=data1$Global_active_power, type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()