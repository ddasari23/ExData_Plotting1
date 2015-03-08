## Plot 2 

png("plot2.png",width=480, height=480, units="px")

plot(EPC_subset$Time, EPC_subset$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()
