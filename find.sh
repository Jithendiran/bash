#!/bin/bash
#find -type f \( -name *.jpg -o -name *.pdf \)

#find /home/jidesh/ML/Neural\ Network/dogs-vs-cats/train/ -iname '*.jpg' -exec ln -sf -t /home/jidesh/GALLERY/ {} +;

name=()
File_Formats=$(<files.txt)

for i in ${File_Formats[@]}
do
  name+=(*.$i)
done

dir=$HOME/GALLERY

if [ ! -d $dir ]
then 
mkdir $dir
notify-send "Created"

fi


#path=()
for i in ${name[@]}
do
	
	#while IFS=  read -r -d $'\0'; do
	#	path+=("$REPLY")
	#done < <(find /home/jidesh/ML  -path $dir -prune -o -iname $i -print0  | sed -e 's/ /\\ /g' )

	find ~ -path $dir -prune -o ! -path "*/\.*" -iname $i -exec ln -sf -t $dir/ {} +;
done

#sudo chmod -R 774 $dir 
#echo ${#path[@]}
#echo $(basename ${path[2]})
#echo $(dirname ${path[2]})
#echo ${path[2]}
#ln -sf "${path[2,0]}" /home/jidesh/
successbeep
