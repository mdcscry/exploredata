erg10<- read.csv("../household_power_consumption.txt",sep=";",skip=66637,nrows=2880,head=F,
                colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
                )

erg10$datefix <- strptime(paste(erg10[,1], erg10[,2]), "%d/%m/%Y %H:%M:%S")
erg10[,2] <- NULL
erg10[,1] <- NULL
#erg10



###PLOT 1
png(filename="./plot1.png", width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"))

###PLOT 1
hist(erg10[,1],col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")


dev.off()

