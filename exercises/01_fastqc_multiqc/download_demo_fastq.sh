#!/usr/bin/env bash
set -e
mkdir -p demo_fastq
cd demo_fastq

# Example small public test files (replace with preferred small FASTQ)
# NOTE: replace URLs if you want different examples
echo "Downloading small test fastq (example)"
wget -q -O SRR_test_1.fastq.gz "https://ftp.sra.ebi.ac.uk/vol1/fastq/ERR000/ERR000001/ERR000001_1.fastq.gz" || true
wget -q -O SRR_test_2.fastq.gz "https://ftp.sra.ebi.ac.uk/vol1/fastq/ERR000/ERR000001/ERR000001_2.fastq.gz" || true

ls -lh
