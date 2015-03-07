

erg10<- read.csv("../household_power_consumption.txt",sep=";",skip=66637,nrows=2880,head=F,
                colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
                )

erg10$datefix <- strptime(paste(erg10[,1], erg10[,2]), "%d/%m/%Y %H:%M:%S")
erg10[,2] <- NULL
erg10[,1] <- NULL
#erg10

###PLOT 3
png(filename="./plot3.png", width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"))

plot (erg10$datefix,erg10[,5],type="l",ylab="Energy Sub Metering",
      xlab="")
lines(x,erg10[,6],col="red")
lines(x,erg10[,7],col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lwd=c(1,1,1),col=c("black","blue","red"))

dev.off()


