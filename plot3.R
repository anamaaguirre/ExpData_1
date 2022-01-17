library(datasets)
pacman::p_load(pacman, rio)
data <- import("C:/Users/ANA/Documents/CURSOS/R/ExpR/household_power_consumption.xlsx")


with(data, plot(Sub_metering_1, type = "l", 
                ylab = "Energy Sub-metering", xlab = "Datetime", xaxt = "n")) 
lines(data$Sub_metering_2, col = "red")
lines(data$Sub_metering_3, col = "blue")
axis(1, c(1, 1440, 2880), labels = c("Thu","Fri","Sat"))

dev.copy(png, "plot3.png")

dev.off()


     