# Deciphering the challenge of protein structure using machine learning 

   Author (@Slack): Stéphie Raveloson (@StephieRav) 

Identifying the structure of proteins has been a longstanding challenge in biology, which has significantly hindered progress in various research areas (Senior et al., 2020). Traditionally, indirect methods such as X-ray crystallography and cryogenic electron microscopy (Millán et al., 2021; Berman et al., 2003; Burley et al., 2019) have been employed to determine protein structures. However, these methods are often time-consuming, expensive, and sometimes lack the required accuracy (Kuhlman & Bradley, 2019). Over the last few decades, the rise of data science and machine learning has provided new tools to address biological challenges, culminating in the development of transformative tools like AlphaFold (Senior et al., 2020; Jumper et al., 2021).

## Generality on AlphaFold

AlphaFold is an artificial intelligence system developed by DeepMind (Jumper et al., 2021). It predicts the 3D structure of a protein with high accuracy, given its amino acid sequence. Currently, more than 200 million protein structures have been predicted by AlphaFold, significantly expanding the known protein database (Varadi et al., 2022). Despite its high accuracy, it is important to note that AlphaFold's predictions are not experimental data; they still require further evaluation and validation (Mariani et al., 2021).

## AlphaFold : deep learning based tools

AlphaFold takes the amino acid sequence of a protein as input and outputs its predicted structure. This system uses deep learning, specifically neural networks, to predict protein folding and structure (Senior et al., 2020; Jumper et al., 2021). It was trained on a large dataset of known protein structures from the Protein Data Bank (PDB). By learning patterns from this data, the system can deduce the structure of new proteins (Senior et al., 2020). A collaboration between DeepMind and EMBL enabled the testing of AlphaFold on datasets from various organisms, including humans, mice, and \*Saccharomyces\* (Tunyasuvunakool et al., 2021).

The strengths of AlphaFold include:

\- AlphaFold accounts for the entire protein sequence in its predictions, considering all different parts (Jumper et al., 2021; Varadi et al., 2022).

\- The system compares the target protein sequence across different species, improving the accuracy of its predictions (Tunyasuvunakool et al., 2021; Jumper et al., 2021).

\- AlphaFold incorporates evolutionary relationships and physical constraints, such as interactions between different parts of the protein sequence (Senior et al., 2020).

## Evaluation and use of AlphaFold

As with any AI system, the predictions made by AlphaFold require validation. This is done using various metrics like the predicted local distance difference test (pLDDT) for each residue in the protein structure, which ranges from 0 to 100, with higher scores indicating greater confidence in the predicted positions (Jumper et al., 2021). Additionally, the predicted aligned error (PAE) measures the expected positional error in the alignment of any two residues in the predicted structure (Mariani et al., 2021).

AlphaFold represents a significant advancement in life sciences, with applications spanning multiple subfields, from molecular biology and evolutionary studies to disease research and drug discovery (Tunyasuvunakool et al., 2021; Jumper et al., 2021). For instance, identifying a protein involved in a disease, such as breast cancer, can help elucidate the disease mechanism (Senior et al., 2020). The predicted protein structures can also be instrumental in drug discovery efforts (Tunyasuvunakool et al., 2021).

Ultimately, AlphaFold showcases the potential of deep learning to drive scientific breakthroughs. It sets a new standard for the application of AI in science, demonstrating how machine learning can advance our understanding of complex biological systems (Jumper et al., 2021; Senior et al., 2020).

\---

## References

1- Berman, H. M., Westbrook, J., Feng, Z., Gilliland, G., Bhat, T. N., Weissig, H., ... & Bourne, P. E. (2003). The Protein Data Bank. \*Nucleic Acids Research\*, 28(1), 235-242.

2- Burley, S. K., Berman, H. M., Bhikadiya, C., Bi, C., Chen, L., Di Costanzo, L., ... & Zardecki, C. (2019). RCSB Protein Data Bank: biological macromolecular structures enabling research and education in fundamental biology, biomedicine, biotechnology and energy. \*Nucleic Acids Research\*, 47(D1), D464-D474.

3-  Jumper, J., Evans, R., Pritzel, A., Green, T., Figurnov, M., Ronneberger, O., ... & Hassabis, D. (2021). Highly accurate protein structure prediction with AlphaFold. \*Nature\*, 596(7873), 583-589.

4-  Kuhlman, B., & Bradley, P. (2019). Advances in protein structure prediction and design. \*Nature Reviews Molecular Cell Biology\*, 20(11), 681-697.

5- Mariani, V., Biasini, M., Barbato, A., & Schwede, T. (2021). lDDT: a local superposition-free score for comparing protein structures and models using distance difference tests. \*Bioinformatics\*, 29(2), 272-278.

6- Millán, C., Sammito, M., & Usón, I. (2021). Macromolecular X-ray crystallography: The search for better crystallization and phasing strategies. \*International Journal of Molecular Sciences\*, 22(18), 9752.

7- Senior, A. W., Evans, R., Jumper, J., Kirkpatrick, J., Sifre, L., Green, T., ... & Hassabis, D. (2020). Improved protein structure prediction using potentials from deep learning. \*Nature\*, 577(7792), 706-710.

8- Tunyasuvunakool, K., Adler, J., Wu, Z., Green, T., Zielinski, M., Žídek, A., ... & Hassabis, D. (2021). Highly accurate protein structure prediction for the human proteome. \*Nature\*, 596(7873), 590-596.

9- Varadi, M., Anyango, S., Deshpande, M., Nair, S., Natassia, C., Yordanova, G., ... & Velankar, S. (2022). AlphaFold protein structure database: massively expanding the structural coverage of protein-sequence space with high-accuracy models. \*Nucleic Acids Research\*, 50(D1), D439-D444.

 
