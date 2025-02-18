library("dplyr")
library("caret")
library("ggplot2")
library("rpart.plot")

titanic <- read.csv("C:/divyakanth/titanic.csv")
titanic = select(titanic, survived, pclass, sex, sibsp, parch)
titanic = na.omit(titanic)

titanic$survived = factor(titanic$survived)
titanic$pclass = factor(titanic$pclass, order = TRUE, levels = c(3, 2, 1))

print(ggplot(titanic, aes(x = survived)) +
  geom_bar(width = 0.5, fill = "coral") +
  geom_text(stat = 'count', aes(label = stat(count)), vjust = -0.5) +
  theme_classic())

train_test_split <- function(data, fraction = 0.8, train = TRUE) {
  total_rows = nrow(data)
  train_rows = fraction * total_rows
  sample = 1:train_rows
  if (train == TRUE) {
    return(data[sample,])
  } else {
    return(data[-sample,])
  }
}

train <- train_test_split(titanic, 0.8, train = TRUE)
test <- train_test_split(titanic, 0.8, train = FALSE)

fit <- rpart(survived ~ ., data = train, method = 'class')

rpart.plot(fit, extra = 106)

predictions <- predict(fit, test, type = "class")

conf_matrix <- table(Predicted = predictions, Actual = test$survived)

accuracy_Test <- sum(diag(conf_matrix)) / sum(conf_matrix)
print(paste('Accuracy for test:', accuracy_Test))
