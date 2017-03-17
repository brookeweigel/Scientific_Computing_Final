
# ECEV 32000 - Introduction to Scientific Computing for Biologists, Final Project

This repository contains the scripts and data files for my scientific computing final project. This project has two components. The first part is written in Python using Jupyter Notebooks. This code 1) uses Biopython modules to find and download sequences from NCBI as a FASTA file, 2) aligns the sequences with a command line wrapper for the multiple alignment program MAFFT, 3) constructs a Maximum Likelihood phylogenetic tree using the RAxML (Randomized Axelerated Maximum Likelihood) command line wrapper, and 4) visualizes the phylogeny in Python using the Bio.Phylo module. The final phylogeny will be visualized using the gg tree package in R, with an option to include raxml bootstrap confidence values at the nodes. 

This code allows you to add a DNA sequence (FASTA file) to the sequences that you download from NCBI, so that you can construct a phylogeny to compare your DNA sequence of interest to the sequences downloaded from NCBI. After merging the two FASTA files, this code uses regular expressions to remove spaces from the DNA sequences in the FASTA file so that the phylogeny branch tips are labeled with “Accession number_Genus_species (or bacterial clone identifier).”

## About the sequences used in this example

The phylum Nitrospirae contains the genus Nitrospira, which are chemolithoautotrophic nitrite-oxidizing bacteria. In this example, we have a DNA sequence for the beta subunit of the nitrite oxidoreductase gene (NxrB). This gene codes for a protein that catalyzes the second step of microbial nitrification, or nitrite (NO2-) oxidation to nitrate (NO3-). The NxrB DNA sequence for this project was obtained from a metagenome-assembled genome (MAG) of a putative Nitrospirae bacterium from the Laurentian Great Lakes. We do not know how this Nitrospirae MAG is related to other nitrite-oxidizing bacteria. To determine the relationship of this bacterium to other Nitrospirae, this code will construct a phylogeny with our Great Lakes Nitrospirae sequence and 85 Nitrospira NxrB DNA sequences from Pester et al. 2014 (Environmental Microbiology 16: 3055–3071). 

## Note on downloading MAFFT, RAxML and ggtree

Before using the MAFFT command line wrapper, you will need to download MAFFT here: http://mafft.cbrc.jp/alignment/software/

Before using the raxml command line wrapper, you will need to download the raxml program here: https://github.com/stamatak/standard-RAxML

For the R code, you will need the Bioconductor package gg tree 
(https://bioconductor.org/packages/release/bioc/html/ggtree.html). 
To download gg tree, start R and enter the following: 
       
       ## try http:// if https:// URLs are not supported    
       source("https://bioconductor.org/biocLite.R")    
       biocLite("ggtree")
