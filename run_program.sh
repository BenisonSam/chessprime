#!/bin/bash
#SBATCH --job-name=BSeAlfHPlFay
#SBATCH --output=Output-%A.out
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=samben@uni-hildesheim.de

# Never forget that! Strange happenings ensue otherwise.
#SBATCH --export=NONE
#SBATCH --partition=stud
#SBATCH --ntasks-per-node=1
#SBATCH --time=24:00:00

set -e

## here comes the program, you want to start :

echo "Training starts ..."

cd /home/samben/ismll_work/SRP/chessprime/

python3 src/chess_zero/run.py self
