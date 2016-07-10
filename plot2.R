# source data created in create_data.R
source("create_data.R")

# Create a png file 
png("plot2.png", width = 480, height = 480)

# plot Global Active Power
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# close device file
dev.off()