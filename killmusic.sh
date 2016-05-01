#!/bin/sh
job=$(ps -C omxplayer |sed 's/^  *//g'  | cut -d " " -f 1 )
job2=$(ps -C omxplayer.bin |sed 's/^  *//g' | cut -d " " -f 1 )
echo ${job}
echo ${job2}

for item in ${job}
do
echo kill ${item}
kill -15 ${item}
done

for item in ${job2}
do 
echo kill ${item}
kill -15 ${item}
done

