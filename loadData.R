## Exploratory Data Analysis Project 1 Plot

#########################################################
# Data loading function
# The function will be used to load data before plotting.
#########################################################
loadData=function(){
    # set working directory:
    # setwd("C:/jjfolder/coursera/4_expl_data_anal/proj1")
    unzip("exdata_data_household_power_consumption.zip")
    hpower <- read.table("household_power_consumption.txt", header=T, sep=";",na.strings="?")
    # hpower <- read.table("household_power_consumption.txt", header=T, sep=";")
    head(hpower)
    
    # get subset for further plotting:
    shpower <- subset(hpower, Date=="1/2/2007"|Date=="2/2/2007")
 
    # convert to daytime using strptime
    dt <- paste(shpower$Date, shpower$Time)
    shpower$daytime <- strptime(dt, "%d/%m/%Y %H:%M:%S")
    head(shpower)
}