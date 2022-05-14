## plot1.R

## Get power consumption in February 1 and 2.
subpower <- read_data()

png("plot1.png")
par(mfrow = c(1, 1), mar = c(4, 4, 2, 2))
hist(subpower$Global_active_power, col = "red",
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")
dev.off()


     