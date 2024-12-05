#!/bin/bash
#SBATCH --time=5:30:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=8GB
#SBATCH --partition=Orion

module load raxml

raxmlHPC -s /scratch/jkim185/6350/gps.phy \
    -n gpsBoot \
    -f a \
    -m GTRGAMMA \
    -N 1000 \
    -o Kalanchoe_fedtschenkoi_outgroup \
    -p 1234 -x 1234 \
    >gps_raxml_log.txt
