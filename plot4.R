library(datasets)
pacman::p_load(pacman, rio)
data <- import("C:/Users/ANA/Documents/CURSOS/R/ExpR/household_power_consumption.xlsx")

par(mfrow = c(2,2))

with(data, hist(Global_active_power, col = "red", 
                xlab = "Global active power", main = "Global active power"))

with(data, plot(Voltage, type = "l", ylab = "Voltage", 
                xlab = "Datetime", xaxt = "n"))
axis(1, c(1, 1440, 2880), labels = c("Thu","Fri","Sat"))

with(data, plot(Sub_metering_1, type = "l", 
                ylab = "Energy Sub-metering", 
                xlab = "Datetime", xaxt = "n")) 
lines(data$Sub_metering_2, col = "red")
lines(data$Sub_metering_3, col = "blue")
axis(1, c(1, 1440, 2880), labels = c("Thu","Fri","Sat"))


with(data, plot(Global_reactive_power, 
                type = "l", ylab = "Global active power", 
                xlab = "Datetime", xaxt = "n"))
axis(1, c(1, 1440, 2880), labels = c("Thu","Fri","Sat"))

dev.copy(png, "plot4.png")
dev.off()
