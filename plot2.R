library(ggplot2)


erg10<- read.csv("../household_power_consumption.txt",sep=";",skip=66637,nrows=2880,head=F,
                colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
                )

erg10$datefix <- strptime(paste(erg10[,1], erg10[,2]), "%d/%m/%Y %H:%M:%S")
erg10[,2] <- NULL
erg10[,1] <- NULL
#erg10

###PLOT 2
png(filename="./plot2.png", width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"))

plot (erg10$datefix,erg10[,1],type="l",ylab="Global Active Power (kilowatts)",
      xlab="")

dev.off()


