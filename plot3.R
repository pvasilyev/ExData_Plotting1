draw3 <- function() {
  source("./common.R")
  consumption_data <- get_data()

  png(filename = "./plot3.png", width = 480, height = 480)
  
  with(consumption_data, plot(Sub_metering_1 ~ Full_Date, 
                              type = "l", 
                              xlab = "", 
                              ylab = "Energy sub metering", 
                              col = "black"))
  with(consumption_data, points(Sub_metering_2 ~ Full_Date, type="l", col = "red"))
  with(consumption_data, points(Sub_metering_3 ~ Full_Date, type="l", col = "blue"))
  legend("topright", 
         col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty = 1)
  
  dev.off()
}