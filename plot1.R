draw1 <- function() {
  source("./common.R")
  consumption_data <- get_data()
  
  png(filename = "./plot1.png", width = 480, height = 480)
  
  hist(consumption_data$Global_active_power, 
       col = "red", 
       main = "Global Active Power", 
       xlab = "Global Active Power (kilowatts)")
  
  dev.off()
}