## Exploratory Data Analysis, Week 1, plot1

data<-read.table("/Users/petermerek/Desktop/Coursera/ExpDataAnalysis/household_power_consumption.txt",sep=";",na.strings="?",stringsAsFactors=TRUE,header=TRUE)

data$Date <- as.Date(data$Date,"%d/%m/%Y")
data1<-subset(data,data$Date=="2007-02-01" | data$Date=="2007-02-02")

png(filename="plot1.png",width=480,height=480)
hist(data1$Global_active_power,col="red",ylab="Frequency",xlab="Glocal Active Power (kilowatts)",main="Global Active Power")
dev.off()
