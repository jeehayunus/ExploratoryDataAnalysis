## Read from dataset
fulldata <- read.table("household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?", check.names = FALSE, stringsAsFactors = FALSE, comment.char="", quote='\"')
fulldata$Date <- as.Date(fulldata$Date, format="%d/%m/%Y")

## Create subset
df <- subset(fulldata, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(fulldata)

## convert date_time
date_time <- paste(as.Date(df$Date), df$Time)
df$Datetime <- as.POSIXct(date_time)


## Plot 1 and save png
dev.copy(png, file = "plot1.png", height = 480, width = 480)
hist(df$Global_active_power,
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

## Saves data to file
<<<<<<< HEAD
dev.off()
=======
dev.off()
>>>>>>> 0338d36a1eb49604d6bab207eb35b10857d08f4f
