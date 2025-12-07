#!/usr/bin/env bash
set -e
mkdir -p qc_reports
fastqc -o qc_reports demo_fastq/*.fastq.gz
echo "FASTQC reports generated in qc_reports/"
multiqc qc_reports -o qc_reports
echo "MultiQC report saved to qc_reports/multiqc_report.html"
