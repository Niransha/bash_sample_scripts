#!/bin/bash

#mkdir 1AL5  1BNA  1SDR  2KOC  AAAA  CAAU  CCCC GACC_tmp
#mkdir 1BNA 2KOC GACC
mkdir CCCC CAAU AAAA UUUU GACC

for fol in $(find . -maxdepth 1 -mindepth 1 -type d \( -name "CCCC" -o -name "CAAU" -o -name "AAAA" -o -name "UUUU" -o -name "GACC" \)) ;
do
cd $fol
fol=`basename $fol`

        echo $fol
        rm *

#        scp -r $cpkoko/mnt/rna/home/nkumarachchi2019/scratch/dev_1d_ABGEZ_benckmark_systems/$fol/last.*.pdb ./
#        scp -r $cpkoko/mnt/rna/home/nkumarachchi2019/scratch/dev_1d_ABGEZ_benckmark_systems/$fol/*.new.pdb ./
          
#       	scp -r $cpkoko/mnt/rna/home/nkumarachchi2019/scratch/dev_1d_ABGEZ_benckmark_systems/$fol/combine/* ./

       	 scp -r $cpkoko/mnt/rna/home/nkumarachchi2019/scratch/dev_1d_ABGEZ_benckmark_systems/$fol/combine/combined_md.mdcrd ./
	 scp -r $cpkoko/mnt/rna/home/nkumarachchi2019/scratch/dev_1d_ABGEZ_benckmark_systems/$fol/combine/strip.prmtop.new ./
	
		


cd ../
done

###########################################

mkdir AA AC AG AU CC CA CG CU 


for dim in $(find . -maxdepth 1 -mindepth 1 -type d \( -name "AAAAAAAAAAAAAAAA" \)) ;
do
cd $dim
dim=`basename $dim`

        echo $dim
        rm *

        scp -r $cpkoko/mnt/beegfs/scratch/nkumarachchi2019/dev_1d_ABGEZ_benckmark_systems/dimers/$dim/last.*.pdb ./
        scp -r $cpkoko/mnt/rna/home/nkumarachchi2019/scratch/dev_1d_ABGEZ_benckmark_systems/dimers/$dim/*.new.pdb ./

        scp -r $cpkoko/mnt/rna/home/nkumarachchi2019/scratch/dev_1d_ABGEZ_benckmark_systems/dimers/$dim/combine/* ./




cd ../
done

