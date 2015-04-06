dat=read.table(file="household_power_consumption.txt",sep=";",header=T)
dat = dat[dat$Date == '1/2/2007' | dat$Date == '2/2/2007',]
dat$Date = as.character(dat$Date)
dat$DateTime = as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S")

png(filename="plot2.png",width=480,height=480)
plot(x=dat$DateTime,y=as.numeric(as.character(dat$Global_active_power)),
     type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()