x <-c(1:5);
y <-c(1:5);
par(pch=22, col="red")
par(mfrow=c(2,4))
opts=c("p","l","o","b","c","s","S","h")
for(i in 1:length(opts)) {
  heading = paste("type=",opts[i])
  plot(x, y,type=opts[i], main=heading) 
}

H<-c(7,12,28,3,41)
M<-c("Mar","Apr", "May","Jun","Jul")
barplot(H,names.arg=M,xlab="Month",ylab="Revenue",col="blue", main="Revenue chart",border="red")

Marks<-c(23,45,65,76,89)
names<-c('a','b','c','d','e')
barplot(Marks,names.arg=names,xlab="Names",ylab="Marks",col="red", main="Marks chart",border="yellow")

height<-c(4.5,5.3,5.8,6.1,5.5)
barplot(height,names.arg=names,xlab="Names",ylab="Height",col="orange", main="Height chart",border="black")


colors= c("green","orange","brown")
months <-c("Mar","Apr","May","Jun","Jul")
regions <-c("East","West","North")
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3, ncol = 5,byrow = TRUE)
barplot(Values, main="total revenue", names.arg = months, xlab = "month", ylab = "revenue", col = colors)
legend("topleft", regions, cex = 1.3, fill = colors)