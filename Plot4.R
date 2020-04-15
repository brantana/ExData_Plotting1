#Create charts
library(rafalib)
mypar(2,2)
#       Plot4-1
with(faithful,plot(tmp2$Date_Time,tmp2$Global_active_power/500,
                   xlab="",ylab="Global Active Power (kilowatts)",
                   type="l"))
#       Plot4-2
with(faithful,plot(tmp2$Date_Time,tmp2$Voltage,
                   xlab="datetime",ylab="Voltage",
                   type="l"))
#       Plot4-3
with(faithful,plot(tmp2$Date_Time,tmp2$Sub_metering_1-2,
                   xlab="",ylab="Energy sub metering",
                   type="l",ylim = c(0,40)))
par(new=TRUE)
with(faithful,plot(tmp2$Date_Time,tmp2$Sub_metering_2-2,
                   xlab="",ylab="Energy sub metering",
                   type="l", col="red",ylim = c(0,40)))
par(new=TRUE)
with(faithful,plot(tmp2$Date_Time,tmp2$Sub_metering_3,
                   xlab="",ylab="Energy sub metering",
                   type="l",col="blue",ylim = c(0,40)))
legend(c("topright"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"),
       lty=c(1,1,1), ncol=1,bty="n")
#       Plot4-4
with(faithful,plot(tmp2$Date_Time,tmp2$Global_reactive_power,
                   xlab="datetime",ylab="Global_reactance _power",
                   type="l"))
dev.copy(png,file="plot4.png")
dev.off()