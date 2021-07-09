\name{ISTMEscore_SSEA}
\alias{ISTMEscore_SSEA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
ISTMEscore_SSEA
}
\description{
We proposed sample-set enrichment analysis (SSEA) to identify genes highly expressed in specific TME subtypes.
}
\usage{
ISTMEscore_SSEA(data,group,multigroup,threshold_anova_p,nPerm,cores)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
input matrix
}
  \item{group}{
TME subtype
}
  \item{multigroup}{
Are genes enriched in multiple groups preserved?
}
  \item{threshold_anova_p}{
Only the genes with low P value in ANOVA were retained. The default value is 0.0001
}
  \item{nPerm}{
SSEA iterations. The default value is 100
}

}

\author{
Zihang Zeng
}
\examples{
ISTMEscore_SSEA(data,group,multigroup,threshold_anova_p,nPerm)
}
