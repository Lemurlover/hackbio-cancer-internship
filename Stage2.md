\#Machine learning for classification of hypertension subtypes using multi-omics: a multi-centre, retrospective,data-driven study. REEL P.S. et al,2022

Author (@Slack): Stéphie Raveloson (@StephieRav)  

\## Video link: (\[ ])

\## Article link: (\[ https\://pubmed.ncbi.nlm.nih.gov/36179553/ ])

 

\##Literature review

 ### Introduction

Arterial hypertension is a leading cardiovascular risk factor with distinct subtypes. Accurately identifying these subtypes is key to preventing and managing cardiovascular complications. However, current diagnostic methods are often invasive. This study aims to classify hypertension subtypes more accurately and non-invasively, and to identify the most discriminating features for various disease combinations.

\### Methodology

Data were collected from 487 participants, including individuals with primary hypertension, primary aldosteronism, pheochromocytoma/paraganglioma, Cushing's syndrome, and a control group of healthy individuals. A total of 409 multi-omics datasets were derived from plasma and urine samples, grouped into six categories: Plasma miRNA, Plasma Catechol O-Methylated Metabolites, Steroid Profiling, Plasma Small Metabolites.

Several machine learning algorithms were applied to this multi-omics dataset, using eight supervised models: \*\*\*Decision Trees (J48), Naïve Bayes (NB), K-nearest neighbours (IBk), LogitBoost (LB), Logistic Model Tree (LMT), Simple Logistic (SL), Random Forest (RF), and Sequential Minimal Optimisation (SMO)\*\*\*. Five disease combinations and three scenarios based on age and sex were considered in the final training stage to select the best features and classifiers.

\*\*The pipeline consisted of three stages:\*\*

\- \*\*Data Processing:\*\* Involved outlier detection, identification of disease combinations, and training to select the best dataset type and top 3 classifiers.

\- \*\*Feature Selection:\*\* Included filtering and wrapping methods, training, and selection of the optimal dataset, best feature selection method, and top 3 classifiers. The selected omics data, disease combinations, and scenarios underwent 100 rounds of recursive runs (RR) to identify the top features.

\- \*\*Testing Stage:\*\* Top features and best classifiers were selected, and both imbalanced and balanced data were trained separately. Finally, the models were tested for prediction on the test dataset.

The multi-omics approach proved significantly more accurate than relying on any single data type, achieving up to 92% balanced accuracy in distinguishing between hypertension subtypes.

\### Results

This method was particularly effective for complex cases such as Cushing’s syndrome and primary aldosteronism, where traditional diagnostic methods often fail. Specific biomarkers, including miRNAs and metabolites, were identified as key discriminators between different hypertension subtypes.

\### Conclusion

In conclusion, this study demonstrates the potential of integrating multi-omics data with machine learning to enhance the diagnosis of hypertension subtypes. This non-invasive, precise diagnostic approach could lead to more personalized treatments and improved prevention for patients with these conditions.

\## Reference

Reel PS, Reel S, van Kralingen JC, Langton K, Lang K, Erlic Z, Larsen CK, Amar L, Pamporaki C, Mulatero P, Blanchard A, Kabat M, Robertson S, MacKenzie SM, Taylor AE, Peitzsch M, Ceccato F, Scaroni C, Reincke M, Kroiss M, Dennedy MC, Pecori A, Monticone S, Deinum J, Rossi GP, Lenzini L, McClure JD, Nind T, Riddell A, Stell A, Cole C, Sudano I, Prehn C, Adamski J, Gimenez-Roqueplo AP, Assié G, Arlt W, Beuschlein F, Eisenhofer G, Davies E, Zennaro MC, Jefferson E. Machine learning for classification of hypertension subtypes using multi-omics: A multi-centre, retrospective, data-driven study. EBioMedicine. 2022 Oct;84:104276. doi: 10.1016/j.ebiom.2022.104276. Epub 2022 Sep 27. PMID: 36179553; PMCID: PMC9520210.
