library("dplyr")
library("caret")
library("e1071")
library("ggplot2")

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
  set.seed(42)  
  total_rows = nrow(data)
  train_rows = fraction * total_rows
  sample_rows = sample(1:total_rows, train_rows)
  
  if (train == TRUE) {
    return(data[sample_rows,])
  } else {
    return(data[-sample_rows,])
  }
}

train <- train_test_split(titanic, 0.8, train = TRUE)
test <- train_test_split(titanic, 0.8, train = FALSE)

nb_model = naiveBayes(survived ~ ., data = train)

nb_predict = predict(nb_model, test)
table_mat = table(nb_predict, test$survived)

nb_accuracy = sum(diag(table_mat)) / sum(table_mat)


cat("The accuracy is:", nb_accuracy, "\n")
