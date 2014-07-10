########################################################
# Exploratory Data Analysis Project 1
# Plot1.R
########################################################

# Prepare and load the data using loadData.R function
source("loadData.R")

# plot1 R script:
# create png file:
png(file="plot1.png",width=480,height=480)
# generate histgram for shpower$Global_active_power
hist(shpower$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
# close the windows:
dev.off()