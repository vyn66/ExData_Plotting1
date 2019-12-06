data <- read.table(file = "C:/Users/S.kh/Desktop/Coursera/Exploratory project/household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?")
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
hist(data$Global_active_power, col = "red", main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png", width = 480, height= 480)
dev.off()