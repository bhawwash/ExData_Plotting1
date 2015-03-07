dat=read.table(file="household_power_consumption.txt",sep=";",header=T)
dat = dat[dat$Date == '1/2/2007' | dat$Date == '2/2/2007',]
dat$Date = as.character(dat$Date)
dat$DateTime = as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S")

png(filename="plot1.png")
hist(main="Global Active Power",x=as.numeric(as.character(dat$Global_active_power)),
     xlab='Global Active Power (kilowatts)',col=colors()[503])
dev.off()
