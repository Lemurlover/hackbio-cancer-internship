# Feature selection and Machine learning  

The goal of the machine learning project is to predict the sample type of the normalized dataset, which consists of two categories: primary tumor and solid tissue. This will help determine whether a sample is cancerous or healthy. We begin by performing feature selection and then fitting a machine learning model to the data \[1].


# Description of dataset<a id="h.hprh8abzw9td"></a>

LUAD (Lung AdenoCarcinoma) normalized dataset   is used, which consists of the gene expression of each gene in samples and the metadata of 20 primary tumor samples and 20 solid tissue samples. \[[ Link to dataset](https://github.com/Lemurlover/hackbio-cancer-internship/tree/master/data)]


# Method<a id="h.3fuk06iabf47"></a>

## Programming language used: <a id="h.j9clkxi28jq5"></a>

Python were used to perform this analysis.


## Libraries: <a id="h.s7mrhcwppe7k"></a>

 The following Python libraries were imported:  

\- \*\*pandas\*\* and \*\*numpy\*\* for data manipulation,  

\- \*\*train\_test\_split\*\* for splitting the data randomly,  

\- \*\*GridSearchCV\*\*, \*\*RandomForestClassifier\*\*, and \*\*RFE\*\* for feature selection and model fitting using Random Forest,  

\- \*\*accuracy\_score\*\*, \*\*classification\_report\*\*, and \*\*confusion\_matrix\*\* for evaluating the performance of the trained model.


## Steps<a id="h.ubsgtfhtia9g"></a>

To analyze the gene expression data, we first set the  barcode as the index for the metadata, ensuring that the  barcode match between the gene expression dataset and the metadata. We then subset both datasets to retain only the common samples for consistency. Next, we define the classification target based on the sample type in the metadata. We proceed with feature selection using Recursive Feature Elimination (RFE) with a Random Forest estimator, selecting the most important features identified by RFE. The Random Forest classifier is then trained on these selected features. Following training, we make predictions on a designated test set and evaluate the model's performance to assess its predictive accuracy.


# Results - Interpretation:<a id="h.ij98176vfayt"></a>

\[ [ Link to the results](https://github.com/Lemurlover/hackbio-cancer-internship/blob/master/Results/results.csv)]

The Random Forest classifier demonstrates exceptional performance on the lung cancer LUAD dataset, achieving an accuracy of 1.00. The confusion matrix indicates that all samples were correctly classified, with no false positives or negatives. The classification report further corroborates this, showing perfect precision, recall, and F1-scores for both classes—Primary Tumor and Solid Tissue Normal. These results suggest that the model effectively distinguished between tumor and normal tissue based on the selected features. However, while these metrics are impressive, it is important to consider potential overfitting,  as the used dataset is small. Further validation on independent datasets is recommended for robust conclusions.

 


# Reference<a id="h.86h7lcgao2h3"></a>

\[1] Abdelwahab O, Awad N, Elserafy M, Badr E (2022) A feature selection-based framework to identify biomarkers for cancer diagnosis: A focus on lung adenocarcinoma. PLOS ONE 17(9): e0269126. <https://doi.org/10.1371/journal.pone.0269126>)
