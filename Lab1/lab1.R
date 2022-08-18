str<-"hello"
print(str)
slices <-c(10, 12,4, 16, 8) 
Ibls <-c("US", "UK", "Australia", "Germany", "France") 
pie(slices, labels = Ibls, main="Pie Chart of Countries",col=rainbow(slices)) 
dev.off

slices <-c(10, 12, 4, 16, 8)
Ibls <-c("US", "UK", "Australia", "Germany", "France")
pct <-round(slices/sum(slices)*100)
Ibls <- paste(Ibls, pct) 
Ibls <- paste(Ibls, "%" ,sep="") 
pie(slices, labels=Ibls, col=rainbow(length(Ibls)), main="Pie Chart of Countries")

time <-c(3,4,5,1,2,8)
activity <-c("Moring activities", "Lab", "Classes", "Playing","Eating", "Sleeping")
pct <-round(time/sum(time)*100)
activity <- paste(activity, pct) 
activity <- paste(activity, "%" ,sep="") 
pie(time, labels=activity, col=rainbow(length(activity)), main="Pie Chart of Daily activities")


x <-mtcars$wt
y<-mtcars$mpg
plot(x, y, main = "Main title", xlab = "X axis title", ylab="Y axis title",pch=19, frame = FALSE)
abline(lm(y~x,data=mtcars), col="blue")