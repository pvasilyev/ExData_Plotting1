draw1 <- function() {
  source("./common.R")
  consumption_data <- get_data()
  
  hist(filtered_by_date$Global_active_power, 
       col = "red", 
       main = "Global Active Power", 
       xlab = "Global Active Power (kilowatts)")
  dev.copy(png, file = "./plot1.png")
  dev.off()
}