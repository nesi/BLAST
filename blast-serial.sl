#!/bin/bash -e

#SBATCH --account=nesi99999
#SBATCH --job-name=BLAST_serial
#SBATCH --time=00:15:00 # Allow 100 CPU hrs / GB of blastn query seq
#SBATCH --mem=1500

module load BLAST/2.6.0-gimkl-2017a
module load BLASTDB/2019-01

##======module_variables==============
BLASTAPP=blastn
DB=nt
INPUT="/nesi/project/nesi99999/Callum/BLAST/input.fasta"
##======Path_variables================

$BLASTAPP -db $DB -query $INPUT
