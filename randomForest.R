library("caTools")
library("randomForest")
library("caret")
library("ggplot2")
iris<-read.csv("C:/divyakanth/iris_dataset.csv")

split<-sample.split(iris, SplitRatio = 0.7)
train<- subset(iris, split == "TRUE")
test<- subset(iris, split== "FALSE")

control<- trainControl(method="repeatedcv", number = 10, repeats = 3)
seed<- 7

metric<- "Accuracy"
set.seed(seed)

rf <- train(species~., data=iris, method="rf", metric = metric, trControl = control)
tunegrid<- expand.grid(.mtry= c(1:4))
rf_gridsearch<-train(species~. , data=iris, method="rf", metric = metric, tuneGrid=tunegrid, trControl=control)

print(plot(rf_gridsearch))
