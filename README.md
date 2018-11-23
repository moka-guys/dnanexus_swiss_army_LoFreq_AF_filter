# dnanexus_swiss_army_LoFreq_AF_filter v1.0

This repository contains the commands executed by the swiss army knife app (v2.1.3) to filter a VCF on allele frequency using BCFtools.

## Input
The app requires a bash script `lofreq_filter_v1.0.sh` and uncompressed VCF file(s) produced by LoFreq (\*lofreq.vcf).

The "command line" input is used to execute `lofreq_filter_v1.0.sh`. This is recorded in `command_line_input.sh`

## How the app works
`lofreq_filter_v1.0.sh` loops through all lofreq.vcf files and removes any variants with an allele frequency < 0.01 using BCFtools (v1.3.1).

## outputs
Filtered VCF files are named lofreq.filtered.vcf. The app's "output folder" argument can be used to output files to the expected directory.

