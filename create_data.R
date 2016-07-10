# Assume that the data file name is known in advance

# File to download
file = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
# Downloaded File
destFile = "household_power_consumption.zip"
# Data file after zipped
household_file = "household_power_consumption.txt"

# if the data file do not exist
if(!file.exists(household_file)) {
  # check if the zip file exist
  if(! file.exists(destFile)){
    download.file(file, destfile = destFile)
  }
  unzip(destFile, list = FALSE, overwrite = FALSE)
}

# columns are seperated with ';'
hpc <- read.csv(household, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
# Read column names
names(hpc)

# Removed columns values with na = "?"
complete_hpc <- hpc[complete.cases(hpc),]
# get subset of data for desired dates
subSetData <- complete_hpc[complete_hpc$Date %in% c("1/2/2007","2/2/2007") ,]

# convert to numeric values
globalActivePower <- as.numeric(subSetData$Global_active_power)

# convert to numeric values
globalReactivePower <- as.numeric(subSetData$Global_reactive_power)

# convert to numeric values
voltage <- as.numeric(subSetData$Voltage)

# convert data time
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# convert submetering to numberic values
subMetering1 <- as.numeric(subSetData$Sub_metering_1)
subMetering2 <- as.numeric(subSetData$Sub_metering_2)
subMetering3 <- as.numeric(subSetData$Sub_metering_3)
