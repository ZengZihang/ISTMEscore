# ISTMEscore
Calculating immune and strmal scores based on bulk transcriptome

The ISTMEscore (Immune and stromal scores in tumor microenvironment) is an simple and user-friendly tool to bulk gene expression data reading (especially the expression array data of GEO database), standardization and calculation of our TME-related scores (immune, stromal). The capability of RMA/MAS5 standardization for raw chip data was based on affy package (1). The calculation of TME-related scores was realized by GSVA package (2).
To use ISTMEscore package, you should download zip compression package named "ISTMEscore_0.1.0.zip" in GitHub (https://github.com/ZengZihang/ISTMEscore). Next, you should install this zip in R or Rstudio, and load it.
The ISTMEscore consists of three functions, including ISTMEscore_standard, ISTMEscore_score and ISTMEscore_subtype functions. The ISTMEscore_standard function is used to data reading and standardization. The ISTMEscore_score is used to Calculate Zeng's anti-tumor immune and pro-tumor stromal scores based on bulk transcriptome. The ISTMEscore_subtype is used to identify the novel 4 TME subtypes in Zeng's study.


# ISTMEscore_standard
We analysis the GSE68571 data set, for instance. The inputdata is download in https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE68571&format=file, and the GPL is download in https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GPL80. Then try to run the following code and gain the processed data:

data=ISTMEscore_standard(inputdata="D:/GSE68571_RAW", GPL="D:/GPL80-30376.txt", rank_col=F, rank_row=F, log2=F, z_score=T, min_max=F, datatype="chip_matrix", aggregatemethod="max", probe_first=T, Ngene=11)

For gene expression matrix of GSE68571 (ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE68nnn/GSE68571/matrix/GSE68571_series_matrix.txt.gz) and annotation files from GEO or with the same format as GEO files: 

data=ISTMEscore_standard(inputdata="D:/GSE68571_series_matrix.txt", GPL="D:/GPL80-30376.txt", rank_col=F, rank_row=F, log2=F, z_score=F, min_max=F, datatype="chip_matrix", aggregatemethod="max", probe_first=T, raw_standard="RMA",Ngene=11)

For CEL files, the code is as follows:

data=ISTMEscore_standard(inputdata="D:/GSE68571_RAW", GPL="D:/GPL80-30376.txt", rank_col=F, rank_row=F, log2=F, z_score=F, min_max=F, datatype="CEL", aggregatemethod="max", probe_first=T, Ngene=11)

Next, we calculate the immune and stromal scores by ISTMEscore_score and subtypes by ISTMEscore_subtype.
# ISTMEscore_score
ISTMEscore_score(data)

# ISTMEscore_subtype
ISTMEscore_subtype(data)

References
1.	Gautier L, Cope L, Bolstad BM, Irizarry RA. affy--analysis of Affymetrix GeneChip data at the probe level. Bioinformatics (Oxford, England). 2004;20:307-15.
2.	Hanzelmann S, Castelo R, Guinney J. GSVA: gene set variation analysis for microarray and RNA-seq data. BMC bioinformatics. 2013;14:7.

Please cite "Balance of Immune and Stromal Components In Tumor Microenvironment Predicted Prognosis and Benefited from Immunotherapy: A Multi-Omics Pan-Cancer Analysis"
