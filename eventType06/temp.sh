#!/bin/sh
for item in $( ls -l ./event/wav | sed 's/  */ /g'|cut -d " " -f 9|sed 's/.wav//g'| sed '1d')
do
 echo omxplayer event/wav/${item}
 touch event/${item}.sh
 echo \#\!\/bin\/sh >> ./event/${item}.sh
 echo omxplayer -o local eventType06/event/wav/${item}.wav >> ./event/${item}.sh
done

