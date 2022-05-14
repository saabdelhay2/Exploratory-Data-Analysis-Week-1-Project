## plot3.R

## Get power consumption in February 1 and 2.
subpower <- read_data()

png("plot3.png")
## Plot sub_metering , 2, & 3
par(mfrow = c(1, 1), mar = c(4, 4, 2, 2 ))
plot(subpower$Time, subpower$Submetering_1, col = "black", type = "l",
     xlab = "", ylab = "Energy submetering",
     main = "Energy Submetering vs. Time")
axis(side = 2, at = seq(0, 35, 5))
lines(subpower$Time, subpower$Submetering_2, col = "red", type = "l")
lines(subpower$Time, subpower$Submetering_3, col = "blue", type = "l")
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Submetering_1", "Submetering_2", "Submetering_3"))
axis(side = 2, at = seq(0, 35, 5))
dev.off()