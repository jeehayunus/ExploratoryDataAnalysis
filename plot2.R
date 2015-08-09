## Read from dataset
fulldata <- read.table("household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?", check.names = FALSE, stringsAsFactors = FALSE, comment.char="", quote='\"')
fulldata$Date <- as.Date(fulldata$Date, format="%d/%m/%Y")

## Create subset
df <- subset(fulldata, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(fulldata)

## Converts date time
date_time <- paste(as.Date(ddf$Date), df$Time)
df$Datetime <- as.POSIXct(date_time)

## Plot 2 and save png
dev.copy(png, file = "plot2.png", height = 480, width = 480)
plot(df$Global_active_power~df$Datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
## Saves data to file
dev.off()