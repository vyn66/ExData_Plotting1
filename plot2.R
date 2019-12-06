data <- read.table(file = "C:/Users/S.kh/Desktop/Coursera/Exploratory project/household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?")
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
x <- paste(data$Date, data$Time, sep = " ")
datetime <- strptime(x, "%d/%m/%Y %H:%M:%S")
data <- cbind(data, datetime)
plot(data$Global_active_power~ data$datetime,type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file = "plot2.png", width = 480, height= 480)
dev.off()