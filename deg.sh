#!/bin/bash

echo"*****Converting between the different temerature scales *****"
echo "1. Convert Calsium temprature into Fahrenheit"
echo "2. Counvet Fahrenheit temprature into Calsium"
echo -n "Select your choice (1-2) : "
read choice
if [ $choice -eq 1 ]
then
 echo -n "Enter temprsture (C) : "
read $tc in
tf = $( echo "scale -eq 2;((9/5) * $tc )  + 32" | bc )
echo " $tc C = $tf F " 
elif [ $choice -eq 2 ]
then
    
 echo -n "Enter temprsture (F) : "
read $tf in
tf = $( echo "scale=2;((5/9) * ($tf-32)" | bc )
echo "$tf = $tc"
else
echo "Please select 1 or 2 only "
exit1 1
fi


