#!/usr/bin/env bash
set -e

VCF=../03_variant_calling/sample.vcf.gz
OUT=sample.vep.vcf

if [ ! -f $VCF ]; then
  echo "Run variant calling first (03_variant_calling)"
  exit 1
fi

vep -i $VCF -o $OUT --cache --assembly GRCh38 --offline --everything
echo "VEP annotation complete: $OUT"
