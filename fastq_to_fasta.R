### This script reads in a fastq file nd produces a fasta file.

### Libraries:
library(R.utils) # Required to decompress .gz files by microseq readFastq.
library(microseq) # Read in fastq files.
library(seqinr)

### Read inputs:
# Allow argument usage.
args = commandArgs(trailingOnly = TRUE)
# Print required input file if typed help.
if (args[1] == "-h" || args[1] == "help"){
  print("Syntax: Rscript.R fastq_file.fastq")
  q()
  N
}
# Get the argument and read it as fastq.
input_file = args[1] # consensus_genomes.fasta.

print("Converting fastq to fasta to produce pefq_merged.fasta")
fastq <- readFastq(input_file)

# Write out the fasta file.
writeFasta(fastq, out.file = "pefq_merged.fasta")

#fastq_test <- readFastq("/home/josemari/Desktop/Jose/Projects/MetaMIX/Scripts/out.extendedFrags.fastq")



