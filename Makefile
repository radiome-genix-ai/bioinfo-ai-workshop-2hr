.PHONY: env fastqc mapping variant annotate

env:
	bash tools/env_setup.sh

fastqc:
	bash exercises/01_fastqc_multiqc/download_demo_fastq.sh
	bash exercises/01_fastqc_multiqc/run_fastqc.sh

mapping:
	bash exercises/02_mapping_bam/mapping_pipeline.sh

variant:
	bash exercises/03_variant_calling/variant_calling.sh

annotate:
	bash exercises/04_annotation/annotate_vep.sh
