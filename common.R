read_full_data <- function() {
  # Read data / parse dates:
  raw_data <- read.table(file = "../household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
  Full_Date = paste(raw_data$Date, raw_data$Time, sep = " ")
  Full_Date <- as.Date(Full_Date, format = "%d/%m/%Y %H:%M:%S")
  consumption <- cbind(Full_Date, raw_data)
  
  consumption
}

get_filtered_data <- function(consumtion_data) {
  # Filter out records in range of 2007-02-01 and 2007-02-02:
  first_feb <- as.Date("2007-02-01 00:00:00", format = "%Y-%m-%d %H:%M:%S")
  second_feb <- as.Date("2007-02-02 23:59:59", format = "%Y-%m-%d %H:%M:%S")
  filtered_by_date <- subset(consumtion_data, Full_Date >= first_feb & Full_Date <= second_feb)
  
  filtered_by_date
}

get_data <- function() {
  full_data <- read_full_data()
  filtered <- get_filtered_data(full_data)
  
  filtered
}