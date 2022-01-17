library(datasets)
pacman::p_load(pacman, rio)
data <- import("C:/Users/ANA/Documents/CURSOS/R/ExpR/household_power_consumption.xlsx")

strptime(data$Time, format = "%Y-%m-%d %H:%M:%S")
as.Date(data$Date, format = "%Y-%m-%d %H:%M:%S")

with(data, hist(Global_active_power, col = "red", 
                xlab = "Global active power", main = "Global active power"))

dev.copy(png, "plot1.png")

dev.off()
