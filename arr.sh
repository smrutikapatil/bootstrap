#!/bin/bash
arr=unset
greatest=100
secondGreatest=100
smallest=999
secondSmallest=999

for ((i=0;i<10;i++))
do
 num=$((RANDOM%900+100))
 echo $num
 arr[$i]=$num
done

for num in ${arr[@]}
do
   if [ $num -ge $greatest ]
   then
    secondGreatest=$greatest
     greatest=$num
     elif [ $num -ge $secondGreatest ]
      then
        secondGreatest=$num
fi
     if [ $num -le $smallest ]
     then
     secondSmallest=$smallest
     smallest=$num
    elif [ $num -le $secondSmallest ]
    then
      secondSmallest=$num
fi
done
echo $secondGreatest $secondSmallest
