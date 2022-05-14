## plot2.R

## Get power consumption in February 1 and 2.
subpower <- read_data()

png("plot2.png")
par(mfrow = c(1, 1), mar = c(4, 4, 2, 2))
plot(subpower$Time, subpower$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)",
     main = "Global Active Power vs. Time")
dev.off()

