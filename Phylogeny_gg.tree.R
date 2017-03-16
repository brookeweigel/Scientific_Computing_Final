# Brooke Weigel's R scipt for visualizing raxml bootstrap tree output
# March 15, 2017

# load packages
library(ape)
library(ggtree)
library(phytools)
library(ggrepel)

# Import the bootstraped tree
raxml_tree <- read.raxml("RAxML_bipartitionsBranchLabels.raxml_nxrB_DNA.out")
raxml_tree

# View numbers on internal nodes for clade labeling
ggtree(raxml_tree) + geom_text2(aes(subset=!isTip, label=node), hjust=-.3) + geom_tiplab() + xlim(0, 0.6)

# Plot the phylogeny using gg tree
TREE_no_bootstrap <- ggtree(raxml_tree, branch.length = "dN_vs_dS", size = 1) + 
  theme_tree2(legend.position = "right") + geom_tiplab(size = 4, color = "black", hjust = -0.005) +
  geom_hilight(node = 74, fill = "hotpink") + xlim(0, 0.70) +
  geom_cladelabel(node = 159, label="Great Lakes MAG", align=TRUE, color = "blue", offset= 0.13) +
  geom_cladelabel(node = 113, label="Nitrospira lineage I", align=TRUE, color = "blue", offset= 0.12) +
  geom_cladelabel(node = 148, label="Nitrospira lineage II", align=TRUE, color = "blue", offset= 0.12) +
  geom_cladelabel(node = 91, label="Nitrospira lineage IV", align=TRUE, color = "blue", offset= 0.109) +
  geom_cladelabel(node = 100, label="Nitrospira lineage V", align=TRUE, color = "blue", offset= 0.109) +
  geom_cladelabel(node = 165, label="Nitrospira lineage VI", align=TRUE, color = "blue", offset= 0.109) +
  geom_cladelabel(node = 130, label="Namibia soil", align=TRUE, color = "blue", offset= 0.145) +
  geom_cladelabel(node = 104, label="Nitrospira moscoviensis", align=TRUE, color = "blue", offset= 0.109)

# Visualize the tree
TREE_no_bootstrap

# Add bootstrap node values to the phylogeny using gg tree
TREE_bootstrap <- ggtree(raxml_tree, branch.length = "dN_vs_dS", size = 1) + 
  geom_label(aes(label = bootstrap, fill = bootstrap)) +
  theme_tree2(legend.position = "right") + geom_tiplab(size = 4, color = "black", hjust = -0.005) +
  geom_hilight(node = 74, fill = "hotpink") + xlim(0, 0.70) +
  geom_cladelabel(node = 159, label="Great Lakes MAG", align=TRUE, color = "blue", offset= 0.13) +
  geom_cladelabel(node = 113, label="Nitrospira lineage I", align=TRUE, color = "blue", offset= 0.12) +
  geom_cladelabel(node = 148, label="Nitrospira lineage II", align=TRUE, color = "blue", offset= 0.12) +
  geom_cladelabel(node = 91, label="Nitrospira lineage IV", align=TRUE, color = "blue", offset= 0.109) +
  geom_cladelabel(node = 100, label="Nitrospira lineage V", align=TRUE, color = "blue", offset= 0.109) +
  geom_cladelabel(node = 165, label="Nitrospira lineage VI", align=TRUE, color = "blue", offset= 0.109) +
  geom_cladelabel(node = 130, label="Namibia soil", align=TRUE, color = "blue", offset= 0.145) +
  geom_cladelabel(node = 104, label="Nitrospira moscoviensis", align=TRUE, color = "blue", offset= 0.109)

# Visualize the Bootstrap tree
TREE_bootstrap
