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





