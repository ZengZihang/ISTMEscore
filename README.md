# 2020-01-18 update log: ISTMEscore_0.1.1
***Fix a bug: the Numer function missing***

# ISTMEscore
Calculating immune and strmal scores based on bulk transcriptome

The ISTMEscore (Immune and stromal scores in tumor microenvironment) is an simple and user-friendly tool to bulk gene expression data reading (especially RNA-chip data in the GEO database), standardization (RMA or MAS5) and calculation of our immune and stromal scores. The RMA/MAS5 standardization for raw chip data was based on affy package (1). The calculation of TME-related scores was realized by GSVA package (2).


To use ISTMEscore package, you can download Binary package named "ISTMEscore_0.1.1.zip" for Windows or Source package named "ISTMEscore_0.1.1.tar.gz" for Linux and Windows. Next, you should install this zip file in R or Rstudio. You can install it with the following codes：

```install.packages("E:/ISTMEscore_0.1.1.tar.gz", repos = NULL, type = "source") #E:/ is an example file directory```

or for Windows:

```install.packages("E:/ISTMEscore_0.1.1.zip", repos = NULL, type = "win.binary")```

then

```library(ISTMEscore)```

The ISTMEscore consists of the three functions, including **ISTMEscore_standard**, **ISTMEscore_score** and **ISTMEscore_subtype** functions. The **ISTMEscore_standard** function is used to RNA-chip data reading and standardization. The **ISTMEscore_score** is used to calculate Zeng's anti-tumor immune and pro-tumor stromal scores based on expression matrix. The **ISTMEscore_subtype** is used to identify the novel 4 tumor microenvironment subtypes in Zeng's study. **It should be noted that you can skip the ISTMEscore_standard function, if you have own pretreated expression matrix.**


## ISTMEscore_standard
We analyze the GSE68571 data set in the GEO database, for instance. The **CEL file** is download in https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE68571&format=file, then ***unzip***. The **GPL file** is download in https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GPL80. Then try to run the following codes:

```data=ISTMEscore_standard(inputdata="E:/GSE68571_RAW", GPL="E:/GPL80-30376.txt", rank_col=F, rank_row=F, log2=F, z_score=F, min_max=F, datatype="CEL", aggregatemethod="max", probe_first=T, Ngene=11) #E:/ is an example file directory```

For **gene expression matrix** of GSE68571 (ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE68nnn/GSE68571/matrix/GSE68571_series_matrix.txt.gz) and **GPL file** from GEO or your own data with the same format as GEO files: 

```data=ISTMEscore_standard(inputdata="E:/GSE68571_series_matrix.txt", GPL="E:/GPL80-30376.txt", rank_col=F, rank_row=F, log2=F, z_score=F, min_max=F, datatype="chip_matrix", aggregatemethod="max", probe_first=T, raw_standard="RMA",Ngene=11)```

Next, we calculate the immune and stromal scores by **ISTMEscore_score** and identify the tumor microenvironment subtypes by **ISTMEscore_subtype**.
## ISTMEscore_score
```ISTMEscore_score(data)```

## ISTMEscore_subtype
```ISTMEscore_subtype(data)```

References
1.	Gautier L, Cope L, Bolstad BM, Irizarry RA. affy--analysis of Affymetrix GeneChip data at the probe level. Bioinformatics (Oxford, England). 2004;20:307-15.
2.	Hanzelmann S, Castelo R, Guinney J. GSVA: gene set variation analysis for microarray and RNA-seq data. BMC bioinformatics. 2013;14:7.

**Please cite "Activation States of Immune and Stromal Components In Tumor Microenvironment Predicted Prognosis and Benefited from Immunotherapy: A Gene-Based Multi-Cancer Analysis"**
