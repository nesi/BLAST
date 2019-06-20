#!/bin/bash -e

#SBATCH --account=nesi99999
#SBATCH --job-name=LandCareWS
#SBATCH --time=00:15:00 # Allow 100 CPU hrs / GB of blastn query seq
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=1500

module load BLAST/2.6.0-gimkl-2017a
module load BLASTDB/2019-01

##======module_variables==============
BLASTAPP=blastn
DB=nt
INPUT="/nesi/project/nesi99999/Callum/BLAST/input.fasta"
OUTPUT="/nesi/project/nesi99999/Callum/BLAST"
##======Path_variables================


echo $SLURM_CPUS_PER_TASK
#srun $BLASTAPP -db $DB -query $INPUT -out $OUTPUT/output.blast.txt -outfmt 1 -evalue 1e-3
srun $BLASTAPP -db $DB -query $INPUT -num_threads $SLURM_CPUS_PER_TASK