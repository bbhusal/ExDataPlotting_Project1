### plot 2 #######
data<-read.table("household_Power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
attach(data)
workdata<-data[Date%in% c("1/2/2007","2/2/2007"),]
#change the class of variable
global_active_power<-as.numeric(workdata$Global_active_power)
datetime<-strptime(paste(workdata$Date,workdata$Time,sep = " "),format = "%d/%m/%Y %H:%M:%S")
#plotting
png("plot2.png",width = 480,height = 480)
plot(datetime,global_active_power,type = "l",xlab = " ",ylab = "Global Active Power(Kilowatts)")
