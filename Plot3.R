#Create charts
library(rafalib)
mypar(1,1)
#       Plot3.png (The combined plot)
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
       lty=c(1,1,1), ncol=1)
dev.copy(png,file="plot3.png")
dev.off()
