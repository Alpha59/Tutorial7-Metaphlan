#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -V
#$ -M eml75@drexel.edu
#$ -P nsftuesPrj
#$ -l h_rt=48:00:00
#$ -pe shm 32-64
#$ -l h_vmem=256G
#$ -q all.q@@amdhosts

. /etc/profile.d/modules.sh
module load shared
module load proteus
module load sge/univa
module load gcc/4.8.1

cd phylosift_v1.0.1

./phylosift all --threads $NSLOTS /mnt/HA/groups/nsftuesGrp/data/infant_gut/SRR492065.10Ksubset.fastq --output=results10k --debug

# ./phylosift all --threads $NSLOTS /mnt/HA/groups/nsftuesGrp/data/infant_gut/SRR492193.fastq --output=results --debug

