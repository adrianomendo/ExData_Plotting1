electPowerConsData = read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, na.strings = "?")
electPowerConsData = electPowerConsData[electPowerConsData$Date == "1/2/2007" | electPowerConsData$Date == "2/2/2007",]
datetime = strptime(paste(electPowerConsData$Date, electPowerConsData$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(datetime, electPowerConsData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()