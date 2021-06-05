function hello ()
{
    echo "hello"
    a="iji"
    echo $1 $2 $3 ## print 1st and 2nd argument
}

hi ()
{
    echo "this also function"
    echo $1 $2
    
}

loc ()
{
    local b="efgh"
    echo "b in local $b"
}

a="jithendiran ji"
echo "a before:"$a


hello jith jithendiran $a #function call and pass parameter

hi ji
echo "a after:$a"


b="abcd"

echo "b before :$b"
loc
echo "b after :$b"