x<-c(100,200,300,400,500,600,700,800,900,1000)
y<-c(1,2,3,4,5,6,7,8,9,10)
r<-lm(y~x)
print(r)
print(summary(r))

a<-data.frame(x=1200)
res<-predict(r,a)
print(res)

plot(y,x,col="blue",main="regression line",abline((lm(x~y))),cex=1.3,pch=16,xlab="quantity",ylab="tons")
df<-read.csv('Fish.csv')
x<-df$Height
y<-df$Weight
r<-lm(y~x)
print(r)
print(summary(r))

a<-data.frame(x=1200)
res<-predict(r,a)
print(res)

plot(y,x,col="blue",main="regression line",abline((lm(x~y))),cex=1.3,pch=16,xlab="FiSH Height",ylab="Fish Weight")