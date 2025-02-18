library("e1071")
library("caTools")
library("class")
library("ggplot2")

iris <- read.csv("C:/divyakanth/iris_dataset.csv")
iris$Species <- as.factor(iris$species)

split <- sample.split(iris$species, SplitRatio = 0.7) 
train_cl <- subset(iris, split == TRUE)
test_cl <- subset(iris, split == FALSE)

print(paste("Train rows: ", nrow(train_cl)))
print(paste("Test rows: ", nrow(test_cl)))

train_scale <- scale(train_cl[, 1:4])
test_scale <- scale(test_cl[, 1:4])

print(paste("Train rows after scaling: ", nrow(train_scale)))
print(paste("Length of train_cl$Species: ", length(train_cl$Species)))

k_values <- c(1, 3, 5, 7, 15, 19)
accuracy_values <- sapply(k_values, function(k) {
  classifer_knn <- knn(train = train_scale, 
                       test = test_scale,
                       cl = train_cl$species,
                       k = k)
  misClassError <- mean(classifer_knn != test_cl$Species)
  return(1 - misClassError)  
})

accuracy_data <- data.frame(K = k_values, Accuracy = accuracy_values)
print(accuracy_data)

print(ggplot(accuracy_data, aes(x = K, y = Accuracy)) + 
  geom_line() + 
  geom_point() + 
  labs(title = "KNN Accuracy vs K-value", x = "K-value", y = "Accuracy"))
