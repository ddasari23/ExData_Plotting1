
 ##Plot 1 
png("plot1.png",width=480, height=480, units="px")
hist(EPC_subset$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowats)",
     col="red")
dev.off()
