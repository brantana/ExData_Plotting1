#Create charts
library(rafalib)
mypar(1,1)
#       Plot1.png
with(faithful,hist(tmp2$Global_active_power/500,
                   xlab="Global Active Power (kilowatts)",ylab ="Frequency",
                   col="red",main="Global Active Power",ylim = c(0,1200)))
dev.copy(png,file="plot1.png")
dev.off()
