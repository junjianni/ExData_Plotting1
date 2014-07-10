########################################################
# Exploratory Data Analysis Project 1
# Plot4.R
########################################################

# Prepare and load the data using loadData.R function
source("loadData.R")

# plot4 R script
# create png file:
png(file="plot4.png",width=480,height=480)
# create 2 row, 2 col plot template
par(mfrow=c(2,2),mar=c(4,4,2,1),oma=c(0,0,2,0))
# create plot1 to reflect shpower$daytime, shpower$Global_active_power relationship
plot(shpower$daytime, shpower$Global_active_power, type='l', xlab="", ylab="Global Active Power", col=1,axes=T)
# create plot2 to reflect shpower$daytime, shpower$Voltage relationship
plot(shpower$daytime, shpower$Voltage, type='l', xlab="datetime", ylab="Voltage", col=1,axes=T)
# create plot3 to reflect shpower$daytime and three sub_metering relationship
plot(shpower$daytime, shpower$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering", col=1,axes=T)
lines(shpower$daytime, shpower$Sub_metering_2, col=2)
lines(shpower$daytime, shpower$Sub_metering_3, col=4)
legend("topright",lty=1,col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), bty="n")
# create plot2 to reflect shpower$daytime, shpower$Global_reactive_power relationship
plot(shpower$daytime, shpower$Global_reactive_power, type='l', xlab="datetime", ylab="Global_reactive_power", col=1,axes=T)
dev.off()
