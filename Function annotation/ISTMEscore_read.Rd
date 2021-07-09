\name{ISTMEscore_read}
\alias{ISTMEscore_read}
\title{ISTMEscore_read}
\usage{
ISTMEscore_read(inputdata, GPL, rank_col, rank_row, log2, z_score, min_max, datatype, aggregatemethod, probe_first, raw_standard, Ngene)
}
\description{
Data Reading and Standardization of ISTMEscore
}
\arguments{
  \item{inputdata}{
the input of expression data
}
  \item{GPL}{
the probe annotation from GEO database
}
  \item{rank_row}{
logical value. Rank-based standardization in each rows. The default value is FALSE
}
  \item{rank_col}{
logical value (TURE or FALSE). Rank-based standardization in each columns. Gene rank expression=ascending order of raw gene expression/number of total genes (max=1, min=1/number of total genes). The default value is FALSE
}
  \item{log2}{
logical value. log2(x+1) standardization. The default value is FALSE
}
  \item{z_score}{
logical value. Z-score standardization. The default value is FALSE
}
  \item{min_max}{
logical value. min_max standardization. min_max gene expression=(raw gene expression -min expression)/(max expressio-min expression). Max=1 and min=0. The default value is FALSE
}
  \item{datatype}{
data type of input data. "CEL" is the raw chip CEL files. "chip_matrix" is the gene expression matrix. The default value is "chip_matrix"
}
  \item{aggregatemethod}{
aggregate method when the gene matches multi-probes containing. "max", "min", "mean" and "median". The default value is "max"
}
  \item{probe_first}{
Do you want to keep probes that match multiple genes? TURE is deletion, and FALSE retains the first matching gene. The default value is TRUE
}  \item{raw_standard}{
standardization methods for the CEL data, including "RMA" and "MAS5". The default value is "RMA"
}  \item{Ngene}{
which column is gene symbol in GPL file
}

}

\value{
A data.frame of expression matrix
}

\author{
Zihang Zeng
}
\examples{
data=ISTMEscore_read(inputdata="D:/GSE68571_RAW", GPL="D:/GPL80-30376.txt", rank_col=F, rank_row=F, log2=F, z_score=F, min_max=F, raw_standard="RMA",datatype="CEL", aggregatemethod="max", probe_first=T, Ngene=11)

data=ISTMEscore_read(inputdata="D:/GSE68571_series_matrix.txt", GPL="D:/GPL80-30376.txt", rank_col=F, rank_row=F, log2=F, z_score=F, min_max=F, datatype="chip_matrix", aggregatemethod="max", probe_first=T,Ngene=11)

}

