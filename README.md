# Data Analytics with R Programming

This repository contains implementations of various data analytics algorithms using R programming. The projects in this repository are part of a syllabus on data analytics and demonstrate the application of key machine learning algorithms on real-world datasets. The following algorithms are implemented:

- **Decision Tree** (using the Titanic dataset)
- **Naive Bayes** (using the Titanic dataset)
- **K-Nearest Neighbors (KNN)** (using the Iris dataset)
- **K-Means Clustering** (using the USArrests dataset)

The datasets used in these projects are:
- **Titanic dataset**: A dataset that contains information about passengers aboard the Titanic ship, including whether they survived.
- **Iris dataset**: A classic dataset used in machine learning for classification, containing measurements of different species of iris flowers.
- **USArrests dataset**: A dataset containing crime statistics for US states, used for clustering analysis.

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

### 4. **K-Means Clustering using USArrests dataset**
   - **Description**: K-Means clustering is performed to group US states based on their crime statistics.
   - **Dataset**: `USArrests.csv`
   - **Steps**:
     - Load and scale the data (excluding the state names).
     - Perform K-Means clustering for different numbers of clusters (2, 3, 4, and 5).
     - Visualize the clustering results using `fviz_cluster`.
     - Use the silhouette method to determine the optimal number of clusters.
   - **Algorithm**: K-Means Clustering (using the `factoextra` and `ggplot2` libraries in R).

## Files in the Repository

- **titanic.csv**: Titanic dataset used for the Decision Tree and Naive Bayes algorithms.
- **iris.csv**: Iris dataset used for the KNN algorithm.
- **USArrests.csv**: USArrests dataset used for the K-Means Clustering algorithm.
- **decisionTree.R**: R script for implementing the Decision Tree algorithm on the Titanic dataset.
- **naivebayes.R**: R script for implementing the Naive Bayes algorithm on the Titanic dataset.
- **K nearest integer using iris database.R**: R script for implementing the KNN algorithm on the Iris dataset.
- **K-Cluster.R**: R script for implementing the K-Means Clustering algorithm on the USArrests dataset.
- **randomForest.R**: R script for implementing the Random Forest algorithm on the Iris dataset with hyperparameter tuning.

## Installation and Setup

To run the R scripts in this repository, make sure you have R installed on your system. You can download R from [here](https://cran.r-project.org/).

### Required Libraries:
To install the required libraries for each algorithm, you can use the following commands in R:
```R
install.packages("dplyr")
install.packages("rpart")      
install.packages("e1071")      
install.packages("caTools")   
install.packages("class") 
install.packages("randomForest") 
install.packages("caret") 
install.packages("ggplot2")
install.packages("factoextra")
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
   source("decisionTree.R")
   source("naivebayes.R")
   source("K nearest integer using iris database.R")
   source("randomForest.R")
   source("K Cluster.R")
   ```


## Project Summary
This project demonstrates the application of four important machine learning algorithms using the R programming language:
- **Decision Tree** to predict Titanic survivors.
- **Naive Bayes** to predict Titanic survivors.
- **K-Nearest Neighbors (KNN)** to classify iris flower species.
- **Random Forest** to classify iris flower species with hyperparameter tuning.
- **K-Means Clustering** is performed to group US states based on their crime statistics.

Each algorithm provides a hands-on introduction to important machine learning concepts and their practical implementation in R.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.



