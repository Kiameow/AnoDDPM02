#!/bin/bash
#SBATCH -J zjz
#SBATCH --output=output_%j.log         # Log file with job ID
#SBATCH --error=error_%j.err           # Error log file with job ID
#SBATCH --mail-type=ALL           # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=zhang_lumi@foxmail.com 
#SBATCH -A F00120230017
#SBATCH -p p-A800
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --gres=gpu:1

# Load necessary modules
module load cuda12.1/toolkit/12.1.1
# source activate your_conda_env
source ~/.bashrc
conda activate zjz
python detection.py 01

