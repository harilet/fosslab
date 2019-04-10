#!/bin/bash
echo "`ps -eo pid,%cpu --sort=-%mem | head`">temp.txt
while read p; do
  data="`echo $p | awk '{ print $2 }' | bc -l`"
  if [ $data -gt 2 ]
  then
   echo "`echo $p | awk '{print $1}'`"
fi
done <temp.txt
