# Taxonomy_analysis_Illumina

All fastq.gz files must be on the same directory specified on taxonomy.sh.

taxonomy.sh is the parent script to run. It gets the unique names of the paired end files on an array, removes adapters with AdapterRemoval, converts merged fastq to fasta with seqtk and blasts the fasta with blastN.

taxonomy_analysis.R reads in the blast output and produces a csv with the organisms for the alligned reads, their frequency and their percentage.

plot_piechart.R reads in the blast output and the taxon csv and produces a piechart with the most frequent organisms of that sample.
