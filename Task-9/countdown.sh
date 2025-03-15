    #! /usr/bin/bash


read -p "enter count number" count
 
function counter
{
    n=0
while [ $count -ge $n ]
do 
    echo "count:$count"
    ((count--));
done

}
counter