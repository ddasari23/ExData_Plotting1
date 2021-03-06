## Plot 3

png("plot3.png",width=480, height=480, units="px")

plot(EPC_subset$Time, EPC_subset$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(EPC_subset$Time, EPC_subset$Sub_metering_2, col="red")
lines(EPC_subset$Time, EPC_subset$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()


