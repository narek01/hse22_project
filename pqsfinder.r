args <- commandArgs()
input_file = args[6]
out_file = args[7]

library(pqsfinder, quietly = TRUE)
library(rtracklayer, quietly = TRUE)
library(Biostrings, quietly = TRUE)

seq <- readDNAStringSet(input_file)
pqs <- pqsfinder(seq[[1]],run_min_len=3,loop_min_len=1,loop_max_len=7, max_defects=0)
results=pqs@ranges
results=as(pqs, "GRanges")
results=renameSeqlevels(results, "chr")

write.table(data.frame(results)[,-c(16,17)], out_file, quote = F, row.names = F)
