# TP NGS Elimination
### *Quentin's work (Cenorhabditis)*


## **This project is organised in 4 sections:**

> - **data**
>
> This section contain raw data and is not linked to git.

> - **results**
>
> This section contain the results and is not linked to git.

> - **intermediary_results**
>
> This section contain the intermediary results and is not linked to git.

> - **scripts**
>
> This section contain the different scripts used to transformed the raw data into results. Ths section is saved on git.


## **The project**

This project was initiated by the Dellatre lab. 
This project aim to identify genes that are deferentially expressed at different stages of genome elimination of *Mesorhabditis belari*. 
To do so, genome extraction were preceded at 6 time points of the *M.belari* development, 2 before genome elimination, 2 during genome elimination and 2 after genome elimination. Sample extraction were made in duplicate, thus 12 samples were obtained.

 ![transcriptomic_screen](home/mydatalocal/tp_illumination_qb/document/transcriptomic_screen.png)

Identification of the transcripts of the different samples was assessed thanks to Illumina reads mapped to *M.belari* reference transcriptome.

After identification, searching of differencially expressed genes during the genome elimination phase (4 cells and 8 cells developmental stage) but not before (1 cell / 2 cells developmental stage) or after (~60 cells and ~100 cells developmental stage) was done.


## **Timeline of the Analysis**

#### 1. **Data recuperation**
  - See "genome_elimination.sh" script. Pull the raw data from the IGFL servers into the computer.
  
#### 2. **Data organisation**
  - See "genome_elimination_organisation.sh" script. Used organised the raw data in a specific directory while renaming the samples files for simplification purpose.

#### 3. **Data quality control**
  - See "genome_elimination_quality_control.sh" script. Used to create quality scores for each reads. Use of fastqc function but too long for day 1.
  
#### 4. **Data trim**
  - See "genome_elimination_trim.sh" script. Used to delete the low quality parts of the reads and keep only the sequence from 30 to 82 base pair.
  
#### 5. **Index creation**
  - See "genome_elimination_index_creation.sh" script. Used to pull the *M.belari* CDS index from **WormBase Parasite** into the computer. Will be used for data mapping later.
  
#### 6. **Data quantification**
  - See "genome_elimination_quantification.sh" script. Used to map the clean reads to the *M.belari* index to create a compte table. We used the Kalipso program with length of 552 and Standard Deviation of 200 taken from the IGFL illumina sequencing data recap (Benjamin's report).

#### 7. **Data analysis**
  - Different analysis have been made and all the scripts are located in the same document: "genome_elimination.sh". 
  - We proceded to a principal component analysis (PCA), to an identification of the genes with the most significant expression change during genome eliminatinon phase, to expression pattern comparison and to interactome analysis with the "string" database.
