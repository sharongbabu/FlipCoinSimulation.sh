#! /bin/bash

random=$((RANDOM%2))
if [  $random -eq 1 ]
then
echo "head"
else
echo "tail"
fi

#! /bin/bash
declare -A coin
i=0
while [ $i -le 2 ]
do
if [ $((RANDOM%2)) -eq 1 ]
then
 coin[head]="h"
else
coin[tail]="t"
i=$(($i+ 1 ))
fi
done
echo ${coin[@]}




#! /bin/bash
declare -A coin1

coin1[random1]="hh"
coin1[random2]="ht"
coin1[random3]="th"
coin1[random4]="tt"

echo ${coin1[@]}
echo | awk '{print 1/4  }'




#! /bin/bash
declare -A coin2
i=0
while [ $i -le 8 ]
do
coin2[random1]="hhh"
coin2[random2]="hht"
coin2[random3]="hth"
coin2[random4]="htt"
coin2[random5]="thh"
coin2[random6]="tht"
coin2[random7]="tth"
coin2[random8]="ttt"
i=$(( $i +1 ))
done
echo ${coin2[@]}
echo | awk '{print 1/8  }'


#! /bin/bash
declare -A coin3
coin3[random1]="h"
coin3[random2]="t"

coin3[random3]="hh"
coin3[random4]="ht"
coin3[random5]="th"
coin3[random6]="tt"

coin3[random7]="hhh"
coin3[random8]="hht"
coin3[random9]="hth"
coin3[random10]="htt"
coin3[random11]="thh"
coin3[random12]="tht"
coin3[random13]="tth"
coin3[random14]="ttt"

echo ${coin3[@]}

for el in "${coin3[@]}"
do
        echo "$el"
done | sort  -nr
dictionary=( $(
      for el in ${coin3[@]}
      do
        echo $el
      done | sort -nr) )

echo ${dictionary[@]}

for el in "${coin3[@]}"
do
        echo "$el"
done | sort  -n
dictionary=( $(
      for el in ${coin3[@]}
      do
        echo $el
      done | sort -n) )

echo ${dictionary[@]}
 winner1=${coin3[random7]}
 winner2=${coin3[random14]}
echo  "winning combinations are:$winner1 and $winner2"

