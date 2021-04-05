#!/bin/bash
#find -type f \( -name *.jpg -o -name *.pdf \)

name=()
File_Formats=$(<files.txt)

for i in ${File_Formats[@]}
do
  name+=(*.$i)
done

dir=$HOME/GALLERY

if [ ! -d $dir ]
then 
mkdir $HOME/GALLERY
notify-send "Created"

fi


for i in ${name[@]}
do
	for j in $( find ~ -path $dir -prune -o -iname $i )
	do
		path=${j// /\ }
		ln -s $path $dir/${j##*/}
		 
		
		#echo $dir${j##*/}
	done
	
done

sudo chmod -R 774 $dir 

successbeep
