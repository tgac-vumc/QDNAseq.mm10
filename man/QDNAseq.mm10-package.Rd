\name{QDNAseq.mm10-package}
\alias{QDNAseq.mm10-package}
\alias{QDNAseq.mm10}
\docType{package}
\title{Package QDNAseq.mm10}
\description{
This package provides QDNAseq binannotations for the mouse genome build mm10 
for bin sizes 1, 5, 10, 15, 30, 50, 100, 500 and 1000 kbp (kilobasepair).

The datasets are named as follows:

mm10.1kbp.SR50\cr
mm10.5kbp.SR50\cr
mm10.10kbp.SR50\cr
mm10.15kbp.SR50\cr
mm10.30kbp.SR50\cr
mm10.50kbp.SR50\cr
mm10.100kbp.SR50\cr
mm10.500kbp.SR50\cr
mm10.1000kbp.SR50\cr
}

\examples{
data("mm10.30kbp.SR50")
assign(bins, "mm10.30kbp.SR50")
\dontrun{readCounts <- binReadCounts(bins=bins, path="./bam")}

# or

bins <- getBinAnnotations(binSize=30, genome="mm10")
\dontrun{readCounts <- binReadCounts(bins=bins, path="./bam")}
}

\author{Daoud Sie}
\section{License}{
This package is licensed under GPL.
}
\keyword{package}
