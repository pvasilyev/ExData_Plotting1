draw4 <- function() {
  source("./common.R")
  consumption_data <- get_data()
  
  png(filename = "./plot4.png", width = 480, height = 480)
  
  par(mfrow = c(2, 2))
  plot(Global_active_power ~ Full_Date, consumption_data,
             type = "l", 
             xlab = "", 
             ylab = "Global Active Power")
  
  plot(Voltage ~ Full_Date, consumption_data, type = "l", "xlab" = "datetime", ylab = "Voltage")
  
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
         lty = 1, bty = "n", cex = 0.80)
  
  plot(Global_reactive_power ~ Full_Date, consumption_data, type = "l", "xlab" = "datetime", ylab = "Global_reactive_power")
  par(mfrow = c(1, 1))
  
  dev.off()
}