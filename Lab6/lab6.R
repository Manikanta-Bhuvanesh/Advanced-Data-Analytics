data<-read.csv("weather.csv")
summary(data)
head(data)
apply(apply(data,2,is.na),2,sum)
data<-na.omit(data)
data$RainTomorrow[data$RainTomorrow =='Yes']<-1
data$RainTomorrow[data$RainTomorrow =='No']<-0
data$RainTomorrow<-factor(data$RainTomorrow, levels = c(0, 1))
set.seed(123)
data<-data[c(3,4,24)]
data[-3]=scale(data[-3])
data2=sample.split(data$RainTomorrow,SplitRatio=0.80)
traindata<-subset(data,data2==TRUE)
testdata<-subset(data,data2==FALSE)


model1<-svm(formula=RainTomorrow ~ .,data = traindata,type="C-classification",kernel="linear")
summary(model1)
pred1<-predict(model1,newdata=testdata[-3])
pred1
tab1<-table(testdata[,3],pred1)
tab1
plot(model1,traindata)

model2<-svm(formula=RainTomorrow~.,data = traindata,type="C-classification",kernel="radial")
summary(model2)
pred2<-predict(model2,newdata=testdata[-3])
pred2
tab2<-table(testdata[,3],pred2)
tab2
plot(model2,traindata)

model3<-svm(formula=RainTomorrow~.,data = traindata,type="C-classification",kernel="polynomial")
summary(model3)
pred3<-predict(model3,newdata=testdata[-3])
pred3
tab3<-table(testdata[,3],pred3)
tab3
plot(model3,traindata)

model4<-svm(formula=RainTomorrow~.,data = traindata,type="C-classification",kernel="sigmoid")
summary(model4)
pred4<-predict(model4,newdata=testdata[-3])
pred4
tab4<-table(testdata[,3],pred4)
plot(model4,traindata)
