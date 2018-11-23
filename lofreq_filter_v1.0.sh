echo "dnanexus_swiss_army_LoFreq_AF_filter v1.0"
# for each lofreq VCF file
for vcf in *.lofreq.vcf; do
# apply BCFtools to filter on the AF field, removing any variants present at less than 0.01%.
# Output this file to .lofreq.filtered.vcf, using ${vcf%.*} to remove everything after the last full stop
bcftools filter -e "INFO/AF < 0.01" $vcf > "${vcf%.*}".filtered.vcf
done
