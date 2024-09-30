# Load necessary libraries
library(tidyverse)
library(caret)
library(randomForest)

# 1. Load the data
gene_expression <- read_csv("Stage3/data/gene_expression.csv")
metadata <- read_csv("Stage3/data/metadata.csv")

# 2. Prepare data for ML
# Set the sample_id as the row names for metadata
metadata <- metadata %>%
  column_to_rownames(var = "barcode")

# Ensure the sample IDs match between gene expression and metadata
common_samples <- intersect(colnames(gene_expression), rownames(metadata))

# Subset both datasets to include only common samples
gene_expression <- gene_expression[, common_samples]
metadata <- metadata[common_samples, ]
dim(gene_expression) # dimension of gene expression
dim(metadata) # dimension of metadata

# 3. Set the classification target
# We will use the "tumor_type" as the classification target
X <- t(gene_expression) # Transpose gene expression to have samples as rows and genes as columns
y <- metadata$sample # Labels

 
dim(X) #check the dim of X
length(y)#check the length of y, X and y should have the same length/row

# Split data into training and test sets (80% training, 20% testing)
set.seed(42)
train_index <- createDataPartition(y, p = 0.8, list = FALSE)
X_train <- X[train_index, ]
X_test <- X[-train_index, ]
y_train <- y[train_index]
y_test <- y[-train_index]

# Check the size of the train index and the complement
length(train_index)  # Should be 80% of the total samples: 32
nrow(X) - length(train_index)  # This should give the size of the test set (20% of the total samples) : 8


# 4. Perform Feature Selection using Recursive Feature Elimination (RFE)
# Define the control using Random Forest as the estimator
control <- rfeControl(functions = rfFuncs, method = "cv", number = 2)

# Use RFE to select the top 100 features (genes)
results <- rfe(X_train, y_train, sizes = c(3), rfeControl = control)

colnames(X_train) <- paste0("Gene_", seq_len(ncol(X_train))) # X_train should have a name on its column
class(X_train)  # Should be "matrix" or "data.frame"
class(y_train)  # Should be "factor" (for classification)
# if y_train is not a factor, transform it : > y_train <- as.factor(y_train)
 

# 5. Train the Random Forest classifier on the selected features
selected_features <- predictors(results)
X_train_selected <- X_train[, selected_features]
X_test_selected <- X_test[, selected_features]

colnames(X_test) <- paste0("Gene_", seq_len(ncol(X_test))) #X_train should have column name

rf_model <- randomForest(X_train_selected, y_train, ntree = 100)

# 6. Make predictions on the test set
y_pred <- predict(rf_model, X_test_selected)

# 7. Evaluate the model performance
accuracy <- mean(y_pred == y_test)
cat("Accuracy of Random Forest classifier: ", accuracy, "\n")

# 8. Save the selected genes to a file
write.csv(selected_features, "selected_genes.csv", row.names = FALSE)
 
# 9. Create a dataframe with results
results_df <- data.frame(
  barcode = rownames(X_test_selected),  # Barcode or sample name
  true_sample_type = y_test,  # True sample type from metadata
  predicted_sample_type = y_pred,  # Predicted sample type
  model_accuracy = accuracy,  # Accuracy of the model for all predictions
  selected_features = paste(selected_features, collapse = ";")  # Selected features (gene names)
)

 
print(results_df)

# 10. Save the dataframe to a CSV file
write.csv(results_df, "model_test_results.csv", row.names = FALSE)

 
