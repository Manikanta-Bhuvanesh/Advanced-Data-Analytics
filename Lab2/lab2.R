x <-mtcars$mpg
h<-hist(x, breaks=10, col='orange', xlab="Miles Per Gallon", main="Histogram with Normal Curve")
data("PlantGrowth")
str(PlantGrowth$weight)
y <-PlantGrowth$weight
h<-hist(y, breaks=10, col=rainbow(y), xlab="Group", main="Histogram with Normal Curve")

h<-hist(y,breaks = 10,col='blue',ylim = c(0,5),border='yellow',xlab = 'Group',main="Histogram with Normal Curve")
text(h$mids,h$counts,labels=h$counts,adj=c(0.5,-0.5))

input <-mtcars[,c('mpg','cyl')] 
print(head(input))

boxplot(mpg~cyl, data = mtcars,notch=TRUE,varwidth=TRUE, xlab = "Number of Cylinders", ylab="Miles Per Gallon", main = "Mileage Data")
