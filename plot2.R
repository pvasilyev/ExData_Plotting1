draw2 <- function() {
  source("./common.R")
  consumption_data <- get_data()
  
  png(filename = "./plot2.png", width = 480, height = 480)
  
  plot(Global_active_power ~ Full_Date, consumption_data,
       type = "l", 
       xlab = "", 
       ylab = "Global Active Power (kilowatts)")
  
  dev.off()
}