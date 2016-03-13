draw1 <- function() {
  raw_data <- read.table(file = "../../household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
  Full_Date = paste(raw_data$Date, raw_data$Time, sep = " ")
  Full_Date <- as.Date(Full_Date, format = "%d/%m/%Y %H:%M:%S")
  consumption <- cbind(Full_Date, raw_data)
  
  #2007-02-01 and 2007-02-02
  first_feb <- as.Date("2007-02-01 00:00:00", format = "%Y-%m-%d %H:%M:%S")
  second_feb <- as.Date("2007-02-02 23:59:59", format = "%Y-%m-%d %H:%M:%S")
  
  filtered_by_date <- subset(consumption, Full_Date > first_feb & Full_Date < second_feb)
  paste(filtered_by_date$Date, filtered_by_date$Time, sep = " ")
}