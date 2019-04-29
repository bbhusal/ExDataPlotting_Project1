### Plot 1 #####
data<-read.table("household_Power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
attach(data)
workdata<-data[Date%in% c("1/2/2007","2/2/2007"),]
#changing the class of the variablle
global_active_power<-as.numeric(workdata$Global_active_power)
 #plotting
 png("plot1.png",width = 480,height =480)
hist(global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(Kilowatts)") 
