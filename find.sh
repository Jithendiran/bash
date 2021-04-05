#find -type f \( -name *.jpg -o -name *.pdf \)
set x
name=("*.jpg" "*.png" "*.pdf")
for i in ${name[@]}
do
	echo find . -iname $i
done
