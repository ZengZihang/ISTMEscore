\name{ISTMEscore_score}
\alias{ISTMEscore_score}
\title{ISTMEscore_score}
\usage{
ISTMEscore_score(data)
}
\description{
Calculation of immune and stromal scores
}
\usage{
ISTMEscore_score(data)
}
\arguments{
  \item{data}{
The data.frame of gene expression data. The data can be creative by ISTMEscore_read function.
}
}

\value{
A named vector with cluster value
}

\author{
Zihang Zeng
}
\examples{
scores=ISTMEscore_score(data)
}
