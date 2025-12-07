# bioinfo-ai-workshop-2hr
Companion materials for the 2-hour Bioinformatics with AI workshop — slides, cheat-sheets, hands-on scripts, demo data downloads, and one-page exercises.


# Bioinformatics with AI — 2-Hour Workshop Companion

**This repository contains slides, hands-on scripts, and demo data links for the 2-hour "Bioinformatics with AI" workshop.**  
Workshop flow: FASTQ QC → Read mapping & BAM processing → Variant calling → Annotation & AI scoring → Q&A.


## Contents
- `slides/` — Gamma.app JSON + single-slide markdowns for quick edits.
- `exercises/` — Hands-on labs with runnable shell scripts:
  - `01_fastqc_multiqc/` — FASTQC + MultiQC demo
  - `02_mapping_bam/` — BWA → SAM → BAM → sort → markdup
  - `03_variant_calling/` — GATK HaplotypeCaller & FreeBayes examples
  - `04_annotation/` — VEP example
- `notebooks/` — Jupyter notebook skeleton to walk through the workflow interactively.
- `data/` — pointers to example datasets and short README (we don't store large files here).
- `tools/env_setup.sh` — helper: installs conda env and common tools (FastQC, bwa, samtools, gatk, vep, multiqc).


## Quick start (local)
1. Clone this repo:
```bash
git clone https://github.com/radiome-genix-ai/bioinfo-ai-workshop-2hr.git
cd bioinfo-ai-workshop-2hr
```


## Create environment (Linux):

```bash
bash tools/env_setup.sh
```


## Run the FASTQC exercise:

```bash
cd exercises/01_fastqc_multiqc
bash download_demo_fastq.sh    # downloads small demo FASTQ
bash run_fastqc.sh
multiqc .
```


## **Requirements**

- Linux or macOS (Linux preferred for tools)
- Conda / mamba for environment management
- ~10 GB free disk space for sample data & tool caches


## License

This project is licensed under the MIT License. See LICENSE.

## Contributing

See CONTRIBUTING.md for how to contribute workshop improvements, slides, or new exercises.

## Contact

Genix.ai — info@genix.ai

