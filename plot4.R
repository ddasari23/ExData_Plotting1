## Plot 4
## Plot 4

png("plot4.png",width=480, height=480, units="px")

par(mfrow=c(2,2))
# 1
plot(EPC_subset$Time, EPC_subset$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")
# 2
plot(EPC_subset$Time, EPC_subset$Voltage, type="l",
     xlab="datetime", ylab="Voltage")
# 3
plot(EPC_subset$Time, EPC_subset$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(EPC_subset$Time, EPC_subset$Sub_metering_2, col="red")
lines(EPC_subset$Time, EPC_subset$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       box.lwd=0)
# 4
plot(EPC_subset$Time, EPC_subset$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power")
lines(EPC_subset$Time, EPC_subset$Global_reactive_power)

dev.off()

