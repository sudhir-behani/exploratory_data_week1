# source data created in create_data.R
source("create_data.R")

# Create a png file 
png("plot3.png", width = 480, height = 480)

plot(datetime, subMetering1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")       
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))

# close device file
dev.off()