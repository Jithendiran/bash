 #a=$(find /home/jidesh/ -iname *.jpg | sed -e 's/ /\\ /g' | sed -e "s/.*/'&'/")
array=()
while IFS=  read -r -d $'\0'; do
    array+=("$REPLY")
done < <(find /home/jidesh/ -iname *.jpg -print0 | sed -e 's/ /\\ /g' )

echo ${#array[@]}
for((i=0;i<${#array[@]};i++))
do
	echo ${array[$i]}
done
echo ${#array[@]}