#!/bin/sh
#
#SBATCH --job-name=searcher 
#SBATCH --output=log.txt 

EXTRA_FLAGS=$( head -${SLURM_ARRAY_TASK_ID} list | tail -1 )
/share/work/alex/rosetta/source/bin/rosetta_scripts.linuxgccrelease @flags $EXTRA_FLAGS 
