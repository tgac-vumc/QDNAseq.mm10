\name{mm10.50kbp.SR50}
\alias{mm10.50kbp.SR50}
\docType{data}

\title{Mm10 50kbp bin annotations}

\description{ Bin annotations are caclulated for non overlapping 50kbp bins 
generated as described in Scheinin et al. (see references). The annotated data 
frame contains:
\itemize{
\item chromosome: Chromosome name,
\item start: Base pair start position,
\item end: Base pair end position,
\item bases: Percentage of non-N nucleotides (of full bin size),
\item gc: Percentage of C and G nucleotides (of non-N nucleotides),
\item mappability: Average mappability of 50mers with a maximum of 2 
mismatches as described in by Derrien et al. (see references),
\item blacklist: Percent overlap with ENCODE blacklisted regions (unused, 
ENCODE blacklist data is not available for mouse),
\item residual: Median loess residual calculated from normal C57BL/6J mouse 
samples from Gnerre et al. (see references),
\item use: Whether the bin should be used in subsequent analysis steps,
}
}

\examples{
data("mm10.50kbp.SR50")
assign("bins", get("mm10.50kbp.SR50"))
\dontrun{readCounts <- binReadCounts(bins=bins, path="./bam")}

# or

bins <- getBinAnnotations(binSize=50, genome="mm10")
\dontrun{readCounts <- binReadCounts(bins=bins, path="./bam")}
}

\value{ Returns an \code{\link[Biobase]{AnnotatedDataFrame}} object. }

\author{Daoud Sie}
\keyword{datasets}

\references{
DNA copy number analysis of fresh and formalin-fixed specimens by shallow 
whole-genome sequencing with identification and exclusion of problematic 
regions in the genome assembly. Scheinin I, Sie D, Bengtsson H, van de Wiel M, 
Olshen A, van Thuijl H, van Essen H, Eijk P, Rustenburg F, Meijer G, Reijneveld
J, Wesseling P, Pinkel D, Albertson D, Ylstra B 2014 \emph{Genome Research}
vol: \bold{24 (12)} pp: 1--11

Fast Computation and Applications of Genome Mappability. Derrien T, Estelle J,
Sola S, Knowles D, Raineri E, Guigo R, Ribeca P January 19, 2012
\emph{PLOS ONE} doi: 10.1371/journal.pone.0030377

High-quality draft assemblies of mammalian genomes from massively parallel 
sequence data. Gnerre S, Maccallum I, Przybylski D, Ribeiro F, Burton J, Walker
B, Sharpe T, Hall G, Shea T, Sykes S, Berlin A, Aird D, Costello M, Daza R,
Williams L, Nicol R, Gnirke A, Nusbaum C, Lander E, Jaffe D 2011
\emph{Proceedings of the National Academy of Sciences of the United States of
America} vol: \bold{108 no. 4} 1512--1518 doi: 10.1073/pnas.1017351108
}
