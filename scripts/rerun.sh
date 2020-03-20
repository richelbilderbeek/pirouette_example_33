#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex33
#SBATCH --output=example_33.log
#
rm -rf example_33
rm *.png
time Rscript example_33.R
zip -r pirouette_example_33.zip example_33 example_33.R scripts *.png

