#!/usr/bin/env bash
set -e
REF=reference.fasta
R1=demo_fastq/SRR_test_1.fastq.gz
R2=demo_fastq/SRR_test_2.fastq.gz
OUT_PREFIX=sample

if [ ! -f $REF ]; then
  echo "Please place reference.fasta (indexed) in the current folder or provide path."
  exit 1
fi

# Index ref if missing
if [ ! -f ${REF}.bwt ]; then
  bwa index $REF
fi

# Map
bwa mem $REF $R1 $R2 > ${OUT_PREFIX}.sam

# Convert, sort
samtools view -S -b ${OUT_PREFIX}.sam > ${OUT_PREFIX}.bam
samtools sort ${OUT_PREFIX}.bam -o ${OUT_PREFIX}.sorted.bam
samtools index ${OUT_PREFIX}.sorted.bam

# Mark duplicates (samtools or gatk)
samtools markdup ${OUT_PREFIX}.sorted.bam ${OUT_PREFIX}.markdup.bam || echo "samtools markdup failed, try GATK MarkDuplicates"

samtools index ${OUT_PREFIX}.markdup.bam
echo "BAM processing complete: ${OUT_PREFIX}.markdup.bam"
