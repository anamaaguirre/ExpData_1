library(datasets)
pacman::p_load(pacman, rio)
data <- import("C:/Users/ANA/Documents/CURSOS/R/ExpR/household_power_consumption.xlsx")

with(data, plot(Global_active_power, 
                type = "l", ylab = "Global active power (kilowats)", 
                xlab = "Datetime", xaxt = "n"))
axis(1, c(1, 1440, 2880), labels = c("Thu","Fri","Sat"))

dev.copy(png, "plot2.png")

dev.off()
