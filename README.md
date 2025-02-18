# Data Analytics with R Programming

This repository contains implementations of various data analytics algorithms using R programming. The projects in this repository are part of a syllabus on data analytics and demonstrate the application of key machine learning algorithms on real-world datasets. The following algorithms are implemented:

- **Decision Tree** (using the Titanic dataset)
- **Naive Bayes** (using the Titanic dataset)
- **K-Nearest Neighbors (KNN)** (using the Iris dataset)

The datasets used in these projects are:
- **Titanic dataset**: A dataset that contains information about passengers aboard the Titanic ship, including whether they survived.
- **Iris dataset**: A classic dataset used in machine learning for classification, containing measurements of different species of iris flowers.

## Project Details

### 1. **Decision Tree using Titanic dataset**
   - **Description**: A decision tree algorithm is used to predict the survival of passengers aboard the Titanic.
   - **Dataset**: `titanic.csv`
   - **Steps**:
     - Preprocess the data.
     - Split the data into training and testing sets.
     - Train a decision tree model using the `rpart` library.
     - Evaluate the model's performance.
   - **Algorithm**: Decision Tree (using the `rpart` library in R).

### 2. **Naive Bayes using Titanic dataset**
   - **Description**: The Naive Bayes algorithm is used to predict the survival of passengers based on different features (e.g., age, class, etc.).
   - **Dataset**: `titanic.csv`
   - **Steps**:
     - Preprocess the data.
     - Split the data into training and testing sets.
     - Train a Naive Bayes model using the `e1071` library.
     - Evaluate the model's performance.
   - **Algorithm**: Naive Bayes (using the `e1071` library in R).

### 3. **K-Nearest Neighbors (KNN) using Iris dataset**
   - **Description**: The K-Nearest Neighbors algorithm is used to classify the species of iris flowers based on their measurements.
   - **Dataset**: `iris_dataset.csv`
   - **Steps**:
     - Load and preprocess the data.
     - Split the data into training and testing sets.
     - Train a KNN model using the `class` library.
     - Evaluate the model's performance using accuracy for various values of `k`.
   - **Algorithm**: K-Nearest Neighbors (using the `class` library in R).
### 4. **Random Forest using Iris dataset**
   - **Description**: The Random Forest algorithm is used to classify the species of iris flowers based on their measurements. Hyperparameter tuning is performed using cross-validation.
   - **Dataset**: `iris.csv` (included in R by default)
   - **Steps**:
     - Split the data into training and testing sets.
     - Train a Random Forest model using the `randomForest` library.
     - Perform hyperparameter tuning for the `mtry` parameter using a grid search.
     - Plot the results of the hyperparameter tuning.
   - **Algorithm**: Random Forest (using the `randomForest` and `caret` libraries in R).

## Files in the Repository

- **titanic.csv**: Titanic dataset used for the Decision Tree and Naive Bayes algorithms.
- **iris.csv**: Iris dataset used for the KNN algorithm.
- **decisionTree.R**: R script for implementing the Decision Tree algorithm on the Titanic dataset.
- **naivebayes.R**: R script for implementing the Naive Bayes algorithm on the Titanic dataset.
- **K nearest integer using iris database.R**: R script for implementing the KNN algorithm on the Iris dataset.
- **randomForest.R**: R script for implementing the Random Forest algorithm on the Iris dataset with hyperparameter tuning.


## Installation and Setup

To run the R scripts in this repository, make sure you have R installed on your system. You can download R from [here](https://cran.r-project.org/).

### Required Libraries:
To install the required libraries for each algorithm, you can use the following commands in R:
```R
install.packages("rpart")      
install.packages("e1071")      
install.packages("caTools")   
install.packages("class") 
install.packages("randomForest") 
install.packages("caret") 
install.packages("ggplot2")    # For plotting (optional)
```

### Running the Scripts:
1. Clone the repository:
   ```bash
   git clone https://github.com/divyakanth07/Data-Analytis-using-R-programming-SRMIST-MCA-I--F-
   ```

2. Navigate to the project directory:
   ```bash
   cd Data-Analytis-using-R-programming-SRMIST-MCA-I--F-
   ```
   
3. Run each R script in RStudio or R console:
   ```R
   source("decision_tree_titanic.R")
   source("naive_bayes_titanic.R")
   source("K nearest integer using iris database.R")
   source("randomForest.R")
   ```

## Project Summary
This project demonstrates the application of four important machine learning algorithms using the R programming language:
- **Decision Tree** to predict Titanic survivors.
- **Naive Bayes** to predict Titanic survivors.
- **K-Nearest Neighbors (KNN)** to classify iris flower species.
- **Random Forest** to classify iris flower species with hyperparameter tuning.

Each algorithm provides a hands-on introduction to important machine learning concepts and their practical implementation in R.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
