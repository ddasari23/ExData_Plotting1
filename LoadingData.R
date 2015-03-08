
## Read the file in the current directory 

filename <- "household_power_consumption.txt"
EPC <- read.table(filename,
                 header=TRUE,
                 sep=";",
                 na="?")
##colClasses=c("character", "character", rep("numeric",7)),

## Convert the Date and Time variables to Date/Time classes in R

EPC$Time <- strptime(paste(EPC$Date, EPC$Time), "%d/%m/%Y %H:%M:%S")
EPC$Date <- as.Date(EPC$Date, "%d/%m/%Y")

## selecting the data from dates 2007-02-01 and 2007-02-02

EPC_subset <- subset(EPC, EPC$Date >= as.Date("2007-02-01") &  EPC$Date <= as.Date("2007-02-02") )
rm(EPC)
