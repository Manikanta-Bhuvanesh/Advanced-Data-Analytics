df<-read.csv('weather.csv')
apply(apply(df,2,is.na),2,sum)
df<-na.omit(df)
binca<-df$RainTomorrow
df$RainTomorrow[df$RainTomorrow =='Yes']<-1
df$RainTomorrow[df$RainTomorrow =='No']<-0
set.seed(123)
split = sample.split(df$RainTomorrow, SplitRatio = 0.8)
training_set = subset(df, split == TRUE)
test_set = subset(df, split == FALSE)
training_set<-training_set[-c(1,2,8,10,11,23)] 
mytrainset2<-training_set[-18]
training_set<-lapply(training_set,as.numeric)
model1<-glm(training_set$RainTomorrow~.,data=mytrainset2,family=binomial()) 
summary(model1)
test_set<-test_set[-c(1,2,8,10,11,23)] 
mytestset2<-test_set[-18]
test_set<-lapply(test_set,as.numeric)
predi1<-predict(model1,mytestset2,type="response") 
y_pred = ifelse(predi1 > 0.5, 1, 0)
tab1 <- table(Predicted = predi1, Actual = test_set$RainTomorrow)
missing_classerr <- mean(y_pred != test_set$RainTomorrow)
print(paste('Accuracy =', 1 - missing_classerr))
exp(coef(model1))
anova(model1,test="Chisq")
model2<-glm(training_set$RainTomorrow~MinTemp+MaxTemp+Sunshine+WindGustSpeed+Humidity9am+Humidity3pm+Pressure3pm,data=mytrainset2,family=binomial())
summary(model2)
1-pchisq(deviance(model2)-deviance(model1),df.residual(model2)-df.residual(model1))
predi2<-predict(model2,mytestset2,type="response") 
binca<-ifelse(binca=="Yes",c(1),c(0)) 
summ=0
for(i in 1:length(predi1)){summ=summ+(binca[i]-predi1[i])^2}
summ

summ=0
for(i in 1:length(predi2)){summ=summ+(binca[i]-predi2[i])^2}
summ
mean(binca)
sum=0
for(i in 1:length(binca)){sum=sum+(binca[i]-mean(binca))^2}
sum

