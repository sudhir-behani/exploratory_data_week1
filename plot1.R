# source data created in create_data.R
source("create_data.R")

# Create a png file 
png("plot1.png", width = 480, height = 480)
  
# plot Global Active Power
hist(globalActivePower, main = "Global Active Power", xlab = "Global Active Power (kilowatts)" , col = "Red")

# close device file
dev.off()