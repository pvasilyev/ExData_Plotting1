draw2 <- function() {
  source("./common.R")
  consumption_data <- get_data()
  
  plot(Global_active_power ~ Full_Date, consumption_data,
       type = "l", 
       xlab = "", 
       ylab = "Global Active Power (kilowatts)")
  dev.copy(png, file = "./plot2.png")
  dev.off()
}