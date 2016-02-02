electPowerConsData = read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, na.strings = "?")
electPowerConsData = electPowerConsData[electPowerConsData$Date == "1/2/2007" | electPowerConsData$Date == "2/2/2007",]
png("plot1.png")
hist(electPowerConsData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()