if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("pqsfinder", ask = FALSE)
BiocManager::install("rtracklayer", ask = FALSE)
BiocManager::install("Biostrings", ask = FALSE)

library(pqsfinder)
library(rtracklayer)
library(Biostrings)
