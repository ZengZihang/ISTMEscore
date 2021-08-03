# ISTMEscore
Calculation of immune and stromal scores in tumor microenvironment

To use ISTMEscore package, you can download Binary package named "ISTMEscore_1.0.0.zip" for Windows or Source package named "ISTMEscore_1.0.0.tar.gz" for Linux and Windows. Next, you could install this package with the following codes in R：

```install.packages("File path/ISTMEscore_1.0.0.tar.gz", repos = NULL, type = "source")```

or for Windows:

```install.packages("File path/ISTMEscore_1.0.0.zip", repos = NULL, type = "win.binary")```

then

```library(ISTMEscore)```

The ISTMEscore consists of the four functions, including **ISTMEscore_read**, **ISTMEscore_score**, **ISTMEscore_subtype** and **ISTMEscore_SSEA** functions. The **ISTMEscore_read** function is used to read transcriptome from GEO database. The **ISTMEscore_score** is used to calculate our immune and stromal scores. The **ISTMEscore_subtype** is used to identify the four tumor microenvironment subtypes based on Zeng's study. The **ISTMEscore_SSEA** is used to identify genes highly expressed in specific TME subtypes (See Methods_SSEA.pdf for details). See **Function annotation** folder for parameter annotations for each ISTMEscore function.

## Data reading
The sample data are downloaded in https://ftp.ncbi.nlm.nih.gov/geo/series/GSE50nnn/GSE50081/matrix/GSE50081_series_matrix.txt.gz (GSE50081_series_matrix.txt.gz) and https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GPL570 (GPL570-55999.txt)
```data=ISTMEscore_read(inputdata="data/GSE50081_series_matrix.txt.gz", GPL="data/GPL570-55999.txt", rank_col=F, rank_row=F, log2=F, z_score=F, min_max=F, datatype="chip_matrix", aggregatemethod="max", probe_first=T,Ngene=11)```

## Calculation of immune and stromal scores
```score=ISTMEscore_score(data)```

## Identification of TME subtypes
```group=ISTMEscore_subtype(data)```

## identify genes highly expressed in specific TME subtypes
```SSEA_gene=ISTMEscore_SSEA(data,group,multigroup=F,threshold_anova_p=0.001,nPerm=100)```

**Please cite "Zeng (J Trans Med, 2021). Immune and Stromal Scoring System Associated with Tumor Microenvironment and Prognosis: A Gene-Based Multi-Cancer Analysis"**
