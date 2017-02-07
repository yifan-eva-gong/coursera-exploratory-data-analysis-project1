library(dplyr)
raw <- read.csv("~/ExData_Plotting1/My_code/household_power_consumption.txt", sep=";")
raw$Dat <- as.Date(raw$Date,"%d/%m/%Y")
sub <- filter(raw, Dat=="2007-02-01" | Dat=="2007-02-02")
sub$Global_active_power <- as.numeric(levels(sub$Global_active_power))[sub$Global_active_power]
png(filename="~/ExData_Plotting1/My_code/plot1.png",width=480,height=480)
hist(sub$Global_active_power,main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col = "red")
dev.off()