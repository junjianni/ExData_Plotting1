########################################################
# Exploratory Data Analysis Project 1
# Plot3.R
########################################################

# Prepare and load the data using loadData.R function
source("loadData.R")

# plot3 R script
# create png file:
png(file="plot3.png",width=480,height=480)
# generate shpower$Sub_metering_1 and shpower$daytime change plot
plot(shpower$daytime, shpower$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering", col=1,axes=T)
# add shpower$Sub_metering_2 and shpower$daytime change line
lines(shpower$daytime, shpower$Sub_metering_2, col=2)
# add shpower$Sub_metering_3 and shpower$daytime change line
lines(shpower$daytime, shpower$Sub_metering_3, col=4)
# add legend for three lines to topright:
legend("topright",lty=1,col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
# close the windows:
dev.off()