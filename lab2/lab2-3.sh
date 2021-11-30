#!/bin/bash
#set -x

 read -p "weight:" wgt
 read -p "height:" hgt
 y=`expr "scale=2; $hgt * $hgt / 10000" | bc`
 BMI=`expr "scale=2; $wgt / $y" | bc`
if [ 1 -eq "$((echo "$BMI < 18.5") | bc)" ]
    then
       echo "저체중입니다."
  elif [ 1 -eq "$((echo "$BMI > 18.5") | bc)" ] && [ 1 -eq "$((echo "$BMI < 23") | bc)" ]
    then
       echo "정상체중입니다."
     else
         echo "과체중입니다."
fi
