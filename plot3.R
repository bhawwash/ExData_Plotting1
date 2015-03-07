dat=read.table(file="household_power_consumption.txt",sep=";",header=T)
dat = dat[dat$Date == '1/2/2007' | dat$Date == '2/2/2007',]
dat$Date = as.character(dat$Date)
dat$DateTime = as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S")

png(filename="plot3.png")
plot(x=dat$DateTime,y=as.numeric(as.character(dat$Sub_metering_1)),type="l",xlab="",ylab="Energy sub metering")
lines(x=dat$DateTime,y=as.numeric(as.character(dat$Sub_metering_2)),col="red")
lines(x=dat$DateTime,y=as.numeric(as.character(dat$Sub_metering_3)),col="blue")
legend("topright",legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c("black","red","blue"),lty=c(1,1))
dev.off()
