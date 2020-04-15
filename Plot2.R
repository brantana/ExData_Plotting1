#Create charts
library(rafalib)
mypar(1,1)
#       Plot2.png
with(faithful,plot(tmp2$Date_Time,tmp2$Global_active_power/500,
                   xlab="",ylab="Global Active Power (kilowatts)",
                   type="l"))
dev.copy(png,file="plot2.png")
dev.off()
