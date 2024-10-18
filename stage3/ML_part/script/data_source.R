# Part1: Setup and Installation........


## Install and load Required Packages


if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("TCGAbiolinks")
BiocManager::install("edgeR")
BiocManager::install("EDASeq")
BiocManager::install("SummarizedExperiment")
BiocManager::install("biomaRt")
install.packages("dplyr")
install.packages('gplots')



## Load required libraries


library(TCGAbiolinks)            #For accessing and querying TCGA data 
library(edgeR)                   #For differential expression analysis
library(EDASeq)                  #Exploratory data analysis and normalization
library(SummarizedExperiment)    #Access assay data
library(biomaRt)                 #Access BioMart databases      
library(dplyr)                   #Manage and manipulate data
library(gplots)                  #Data visualize and heatmap generate



#Part 2: Data Preprocessing........


## Collect the list of cancer projects from TCGA databases

  -Lung Adenocarcinoma (LUAD) dataset select

gdcprojects <- getGDCprojects()
getProjectSummary('TCGA-LUAD')
?GDCquery



##Download data

### Build a query to retrieve gene expression data 



luadQ <- GDCquery(project = 'TCGA-LUAD',
                  data.category = 'Transcriptome Profiling',
                  experimental.strategy = "RNA-Seq",
                  workflow.type = "STAR - Counts",
                  access = "open",
                  data.type = "Gene Expression Quantification",
                  sample.type = c("Primary Tumor", "Solid Tissue Normal"))


###Downlaod query data

```{r}
GDCdownload(luadQ)
luad.data <- GDCprepare(luadQ)

```

## Data structure

```{r}
head(luad.data)
View(luad.data)
colnames(luad.data)       
nrow(luad.data)             
ncol(luad.data)
```


## Explore metadata information

```{r}
luad.data$race
luad.data$tumor_descriptor
luad.data$barcode
luad.data$sample_type
luad.data$sample_id

```


## Create a simple metadata for this analysis

```{r}

Metadata <- data.frame("barcode"= luad.data$barcode,
                       "race" = luad.data$race,
                       "tumor_type" = luad.data$tumor_descriptor,
                       "sample" = luad.data$sample_type,
                       "sample_id" = luad.data$sample_id)

```


## Save a metadata to a CSV file

```{r}
# Save the metadata to a CSV file
write.csv( Metadata, "TCGA_LUAD_metadata.csv", row.names = FALSE)
```


## Select unstranded dataset

```{r}

luad.raw.data <- assays(luad.data)
dim(luad.raw.data$unstranded)

```



##Downsize dataset 

- 20 select for primary tumor and 20 for Solid Tissue Normal data

```{r}

selectedBarcodes <- c(subset(Metadata, sample == "Primary Tumor")$barcode[c(1:20)],
                      subset(Metadata, sample == "Solid Tissue Normal")$barcode[c(1:20)])
```


## Select unstranded dataset

```{r}
selectedData <- luad.raw.data$unstranded[, c(selectedBarcodes)]
dim(selectedData)
```


#Part 3: Normalization........

## Data normalization and filtering

```{r}
normData <- TCGAanalyze_Normalization(tabDF = selectedData, geneInfo = geneInfoHT, method = "geneLength")



```



##Filtering

```{r}

fildata <- TCGAanalyze_Filtering(tabDF = normData,
                                 method = "quantile",
                                 qnt.cut = 0.25)


```



##Dimension of filtering data

```{r}
dim(fildata)
```

