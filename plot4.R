######PLot 4###
data<-read.table("household_Power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
workdata<-data[data$Date%in% c("1/2/2007","2/2/2007"),]
#change the class of variables in workdata
datetime<-strptime(paste(workdata$Date,workdata$Time,sep = " "),format = "%d/%m/%Y %H:%M:%S")
sub_metering_1<-as.numeric(workdata$Sub_metering_1)
sub_metering_2<-as.numeric(workdata$Sub_metering_2)
sub_metering_3<-as.numeric(workdata$Sub_metering_3)
voltage<-as.numeric(workdata$Voltage)
plot(datetime,global_active_power,type = "l",xlab = " ",ylab = "Global Active Power(Kilowatts)")
global_active_power<-as.numeric(workdata$Global_active_power)
global_reactive_power<-as.numeric(workdata$Global_reactive_power)
#plotting
png("plot4.png",width = 480,height = 480)
par(mfrow=c(2,2))
plot(datetime,global_active_power,type = "l",xlab = " ",ylab = "Global Active Power(Kilowatts)")
plot(datetime,voltage,type = "l",xlab = "datetime ",ylab = "Voltage")
plot(datetime,sub_metering_1,type = "l",xlab=" ",ylab = "Energy sub metering")
lines(workdata$datetime,workdata$sub_metering_2,type = "l",col="red")
lines(workdata$datetime,workdata$sub_metering_3,type = "l",col="blue")
legend(c("topright"),c("sub_metering_1","sub_metering_2","sub_metering_3"),lty=1,lwd=2,col = c("black","red","blue"))
plot(datetime,global_reactive_power,type = "l",xlab = "datetime ",ylab = "Global_rective_power")
