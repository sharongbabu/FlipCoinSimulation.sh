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







