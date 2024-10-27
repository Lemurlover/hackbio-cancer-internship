# Install necessary packages
install.packages("DMwR")   # For SMOTE
install.packages("caret")  # For ML models
install.packages("randomForest")
install.packages("e1071")

# Load required libraries
library(DMwR)
library(caret)

# Load the metadata (ensure it is read correctly as CSV)
metadata <- read.csv("path_to_your_metadata.csv")

# Check the distribution of cancer diagnosis and stage
table(metadata$tumor_type)   # Diagnosing cancer (Tumor vs. Normal)
table(metadata$pathologic_stage)   # Cancer stage

# Check for imbalance
prop.table(table(metadata$tumor_type))
prop.table(table(metadata$pathologic_stage))

# Apply SMOTE if necessary (e.g., if imbalanced)
balanced_metadata <- SMOTE(tumor_type ~ ., data = metadata, perc.over = 100, perc.under = 200)
balanced_stage <- SMOTE(pathologic_stage ~ ., data = metadata, perc.over = 100, perc.under = 200)

