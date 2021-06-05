a="aa"
case $a in
  1 )
  echo "1";;
  2 )
  echo "2";;
  "a" )
  echo "a";;
  "aa" )
  echo "aa";;

  * )
  echo "default";;
esac

echo -e "Enter data :\c"
read a


case $a in
  [a-z] )
  echo "small letter";;
  [A-Z] )
  echo "captital letter";;
  [0-9] )
  echo "number";;
  ? )
  echo "special character";;

  * )
  echo "default";;
esac