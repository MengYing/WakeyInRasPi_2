#!/bin/sh
cd eventType01
attime=$(cut -d " " -f 14-15 eventType01.txt|sed 's/\([0-9][0-9][0-9]*\)\( \)\([0-9][0-9]*\)/\1\3 /g'|sed 's/^..//g'|head -n 1|bc)
atdate=$(date "+%Y%m%d%H%M" |sed 's/^..//g'|bc)

echo $attime
echo $atdate
if [ ${atdate} -lt  ${attime} ]
then
   echo $(cut -d " " -f 14-15 eventType01.txt|sed  's/\([0-9][0-9]*\)\( \)\([0-9][0-9]*\)/\1\3 /g'|sed 's/^..//g'|head -n 1) | xargs  at -f event/settime.sh -t
   echo yes
else
   echo no 
fi
