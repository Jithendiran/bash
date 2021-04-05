#!/bin/sh
a=2
b=3
c=7
<<c if [[ a<b && c>a ]] || [ a<b -a c>a ]
then                                            #multi line comment
echo "a"
fi
c
echo a+b
echo $( a+b )
echo $(( a+b ))

#for decimal
a=10.53
b=2
echo $(( a+b )) # error for float
echo "$a+$b" | bc
echo "scale=4;40/3" | bc # for division use scale