read_data <- function() {
  ## read_data.R
  
  ## Download and unzip the dataset
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileURL, destfile = "power.zip")
  unzip("power.zip")
  
  ## Read in the dataset
  col.names = c("Date", "Time", "Global_active_power", 
                "Global_reactive_power", "Voltage", "Global_intensity",
                "Submetering_1", "Submetering_2", "Submetering_3")
  household_power <- read.table("household_power_consumption.txt",
                                skip = 1, sep = ";")
  names(household_power) <- col.names 
  subpower <- subset(household_power, 
                     Date == "1/2/2007" | Date == "2/2/2007")
  
  ## Convert to numeric
  subpower$Global_active_power <- 
    as.numeric(subpower$Global_active_power)
  subpower$Global_reactive_power <- 
    as.numeric(subpower$Global_reactive_power)
  subpower$Voltage <- as.numeric((subpower$Voltage))
  subpower$Global_intensity <- as.numeric(subpower$Global_intensity)
  subpower$Submetering_1 <- as.numeric(subpower$Submetering_1)
  subpower$Submetering_2 <- as.numeric(subpower$Submetering_2)  
  subpower$Submetering_3 <- as.numeric(subpower$Submetering_3)
  subpower  # return selection
}