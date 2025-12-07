#!/usr/bin/env bash
set -e

# Minimal conda env setup (adjust python version as needed)
ENV_NAME=bioinfo-workshop
PYTHON_VER=3.11

echo "Creating conda env: $ENV_NAME"
conda create -y -n $ENV_NAME python=$PYTHON_VER
conda activate $ENV_NAME

echo "Installing commonly used bioinformatics tools"
conda install -y -c bioconda fastqc multiqc bwa samtools bcftools freebayes gatk4 bcftools vep
pip install jupyterlab

echo "Environment ready. Activate with: conda activate $ENV_NAME"