#########################################################################/**
# @RdocData mm10.1000kbp.SR50
#
# @title "mm10 1000kbp bin annotations"
# 
# \description{ The annotated data frame contains pre calculated data for
# each bin describing:
#   - chromosomal coordinate  
#   - mappability
#   - residual
#   - GC content & N content
#   - encode blacklist
#   - DGV consensus blacklist
# }
#
# @author "DS"
#*/#########################################################################


# library(QDNAseq)
# library(Biobase)
# library(BSgenome.Mmusculus.UCSC.mm10)
# 
# binSize <- 1000
# 
# mm10.1000kbp.SR50 <- createBins(bsgenome=BSgenome.Mmusculus, binSize=binSize)
# 
# bins$mappability <- calculateMappability(bins,
#   bigWigFile='/path/to/wgEncodeCrgMapabilityAlign50mer.bigWig',
#   bigWigAverageOverBed='/path/to/bigWigAverageOverBed')
# 
# bins$blacklist <- calculateBlacklist(bins,
#   bedFiles=c('/path/to/wgEncodeDacMapabilityConsensusExcludable.bed',
#     '/path/to/wgEncodeDukeMapabilityRegionsExcludable.bed'))
# 
# # 1kG data
# ctrl <- binReadCounts(bins, path='/path/to/control-set/bam/files')
# ctrl <- applyFilters(ctrl, residual=FALSE, blacklist=FALSE, mappability=FALSE, bases=FALSE)
# bins$residual <- iterateResiduals(ctrl)
# 
# bins$use <- bins$chromosome %in% as.character(1:22) & bins$bases > 0
# 
# bins <- AnnotatedDataFrame(bins, varMetadata=data.frame(labelDescription=c(
#   'Chromosome name',
#   'Base pair start position',
#   'Base pair end position',
#   'Percentage of non-N nucleotides (of full bin size)',
#   'Percentage of C and G nucleotides (of non-N nucleotides)',
#   'Average mappability of 50mers with a maximum of 2 mismatches',
#   'Percent overlap with ENCODE blacklisted regions',
#   'Median loess residual from 1000 Genomes (50mers)',
#   'Whether the bin should be used in subsequent analysis steps'),
#   row.names=colnames(bins)))
# 
# attr(bins, "QDNAseq") <- list(
#   author="Ilari Scheinin",
#   date=Sys.time(),
#   organism="Hsapiens",
#   build="mm10",
#   version=packageVersion("QDNAseq"),
#   md5=digest::digest(bins@data),
#   sessionInfo=sessionInfo())
# 
# # DGV?
# 
# save(mm10.1000kbp.SR50, file="mm10.1000kbp.SR50.rda", compress="xz")

# EOF
