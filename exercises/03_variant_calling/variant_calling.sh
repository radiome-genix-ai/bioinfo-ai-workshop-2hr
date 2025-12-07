#!/usr/bin/env bash
set -e
REF=reference.fasta
BAM=../02_mapping_bam/sample.markdup.bam
OUT=sample.vcf.gz

if [ ! -f $BAM ]; then
  echo "Run mapping pipeline first (02_mapping_bam)"
  exit 1
fi

# GATK HaplotypeCaller (gVCF mode)
gatk --java-options "-Xmx4g" HaplotypeCaller \
  -R $REF \
  -I $BAM \
  -O sample.g.vcf.gz \
  -ERC GVCF

# Genotype GVCF to VCF (if single sample simple example)
gatk --java-options "-Xmx4g" GenotypeGVCFs \
  -R $REF \
  -V sample.g.vcf.gz \
  -O $OUT

# Quick stats
bcftools stats $OUT > variant_stats.txt
echo "Variant calling finished. Output: $OUT and variant_stats.txt"
