#!/bin/bash
## SLURM parameters
#SBATCH --time 1-0 # days-minutes
#SBATCH --job-name=telseq_test # Job name
#SBATCH --account=fc_hockemeyer
#SBATCH --nodes=1
#SBATCH --ntasks=20 # Number of cores
#SBATCH --mem=64000 # Memory pool for all cores (see also --mem-per-cpu)
#SBATCH --partition=savio # Partition to submit to
#SBATCH --qos=savio_normal
#SBATCH --output=/global/scratch/florbeer/DHFL003/DHFL003_Tim/jobs/telseq_%A_%a.out # File to which STDOUT will be written
#SBATCH --error=/global/scratch/florbeer/DHFL003/DHFL003_Tim/jobs/telseq_%A_%a.err # File to which STDERR will be written

module load samtools
module load r/3.5.1
#change rlibs path in pipeline.R file that is called by the computel.sh file

./computel.sh -1 /global/scratch/florbeer/DHFL003/DHFL003_Tim/DHFL003N_S14_L001_R1_001.fastq.gz -2 /global/scratch/florbeer/DHFL003/DHFL003_Tim/DHFL003N_S14_L001_R2_001.fastq.gz -o DHFL003N_S14