## Plot4.R

## Get power consumption in February 1 and 2.
subpower <- read_data()

png("plot4.png")
par(mfrow = c(2, 2), mar = c(4, 4, 2, 2))
plot(subpower$Time, subpower$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")

plot(subpower$Time, subpower$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

plot(subpower$Time, subpower$Submetering_1, col = "black", type = "l",
     xlab = "", ylab = "Energy submetering")
axis(side = 2, at = seq(0, 35, 5))
lines(subpower$Time, subpower$Submetering_2, col = "red", type = "l")
lines(subpower$Time, subpower$Submetering_3, col = "blue", type = "l")
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Submetering_1", "Submetering_2", "Submetering_3"),
       cex = 0.6)

plot(subpower$Time, subpower$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global Reactive Power")
dev.off()