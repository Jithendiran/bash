#! /bin/bash
#find -type f \( -name *.jpg -o -name *.pdf \)

name=("*.jpg" "*.png" "*.pdf" "*.jpeg")
for i in ${name[@]}
do
	find ~ -iname $i
	#echo $a
done
