# Tutorial7-Metaphlan
A tutorial for using Metaphlan


1. Clone the GitHub repo into a Home directory (all pathnames assume Tutorial7-Metaphlan is under Home)
2. Create a folder called VirtualPy containing the requirements.txt file under Tutorial7-Metaphlan
3. Run configure_metaphlan.sh by typing ./configure_metaphlan.sh
	This will create a Python Virtual Environment containing all the modules needed to run MetaPhlAn
	See below for more info on Virtual Environments
	This includes NumPy and SciPy, and takes about 30 min to run, but only needs to be done once
```
virtualenv VirtualPy
cd VirtualPy
source bin/activate
pip install -r requirements.txt
python
```
4. Download MetaPhlAn from the internet while inside directory Tutorial7-Metaphlan
```
hg clone ssh://hg@bitbucket.org/nsegata/metaphlan

```
5. Run Data_M1.txt to populate the Data directory
	by typing qsub "".txt
	This will download SRA files, and convert to fastq
6. Run Bowtie_M2.txt to run Bowtie and save results
	Note that Bowtie is installed in Proteus
	-Optional Step: May use Options_M3.txt to create new txt files from previously saved Bowtie
7. Run MergeHeatMap_M4.txt to merge files and create heatmaps
8. Download GraPhlAn from the internet while inside directory metaphlan
	-Manual step: Then, move all files from graphlan folder up into metaphlan directory
```
hg clone ssh://hg@bitbucket.org/nsegata/graphlan

```
9. Run Graphlan_M5.txt to create a phylogenetic tree


*Python Virtual Environments
To set up the Virtual Environment for each session
1. Go into containing folder (VirtualPy)
2. Type into command line: unset PYTHONPATH
3. Then, type into command line: source bin/activate

(VirtualPy) should come up before the command line prompt

To end a Virtual Environment:
1. Type into command line: deactivate
