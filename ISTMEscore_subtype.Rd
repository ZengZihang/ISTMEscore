
\name{ISTMEscore_subtype}
\alias{ISTMEscore_subtype}
\title{ISTMEscore_subtype}
\usage{
ISTMEscore_subtype(data,threshold_immune,threshold_stromal)
}
\description{
identify the novel 4 TME subtypes in Zeng's study
}
\arguments{
  \item{data}{
the input of expression data
}
  \item{threshold_immune}{
threshold of immune score is a 0-1 number, and default is 0.5.
}
  \item{threshold_stromal}{
threshold of stromal score is a 0-1 number, and default is 0.5.
}
}

\value{
A data.frame of expression matrix
}

\author{
Zihang Zeng
}
\examples{
group=ISTMEscore_subtype=(data,threshold_immune,threshold_stromal)

}
