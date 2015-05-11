#!/bin/bash
# Should be called the directory above the metaphlan/ directory
# Actually, this should be called from within the VirtualPy directory
# Ideally, this should already have been run when students clone the repo to their Proteus accounts

mkdir -p VirtualPy

unset PYTHONPATH
virtualenv VirtualPy
cd VirtualPy
source bin/activate
pip install -r requirements.txt


# plotting_scripts/metaphlan_hclust_heatmap.py -c bbcry --top 25 --minv 0.1 -s log --in output/merged_abundance_table.txt --out output_images/abundance_heatmap_ElizTest.png


#/home/eml75/metaphlan1/metaphlan


/home/eml75/metaphlan1/metaphlan/plotting_scripts/metaphlan_hclust_heatmap.py -c bbcry --top 25 --minv 0.1 -s log --in /home/eml75/metaphlan1/metaphlan/output/merged_abundance_table.txt --out /home/eml75/metaphlan1/metaphlan/output_images/abundance_heatmap_ElizTest.png




