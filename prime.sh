#!/bin/bash
echo "Enter a number" 
read num
function prime
{

for (( i=2; i<=num/2; i++ ))
do

if [ $((num%i)) -eq 0 ]
then
    echo "$num is  not a prime number"
exit
fi 
done
echo "$n is a prime"
}
r=`prime $number`
echo "$r"
