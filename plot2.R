########################################################
# Exploratory Data Analysis Project 1
# Plot2.R
########################################################

# Prepare and load the data using loadData.R function
source("loadData.R")

# plot2 R script:
# create png file:
png(file="plot2.png",width=480,height=480)
# generate shpower$Global_active_power and shpower$daytime change plot
plot(shpower$daytime, shpower$Global_active_power, type='l', xlab="", ylab="Global Active Power (kilowatts)", col=1,axes=T)
# close the windows:
dev.off()