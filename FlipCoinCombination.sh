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


