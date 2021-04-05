#!/bin/sh
:'syntax while [ condition ]
do
    gdb
done
syntax
'
i=1
while [ $i -lt 4 ]
do
    echo -e "{$i}\t \c"
    i=$((i+1)) #((++i))
   # gnome-terminal 
done

for var in 1 2 3
do
    echo $var 
done

a=(1 2 3)
for var in ${a[@]}
do
    echo $var 
done

for((i=0;i<3;i++))
do
echo $i
done

select i in jith jidesh jithendiran
do
    echo $i is selected
done