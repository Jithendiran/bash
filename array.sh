a=('a' 'b' 'c')

echo ${a[0]} #print a[0]
echo ${a[@]} # print all
echo ${!a[@]} # print index of all 
echo ${#a[@]} #print length
a[3]='d'
echo ${a[3]}
unset a[2] #delete a[2]

echo ${a[@]}