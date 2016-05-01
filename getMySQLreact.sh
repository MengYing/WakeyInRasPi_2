#!/bin/sh
sleep 30s
userID="0"
#scheduleID=20160423
scheduleID=$(date "+%Y%m%d")
#echo ${scheduleID}
#userID 1 date 20160329
#modify the userID
sed -i -e '2s/[[:digit:]][[:digit:]]*/'$userID'/g' getMySQLreactMusic.php
#cat practice.txt > getMySQLrealTimeTalk.php
#modify the date
sed -i -e '3s/[[:digit:]][[:digit:]]*/'$scheduleID'/g' getMySQLreactMusic.php
#modify the userID
sed -i -e '2s/[[:digit:]][[:digit:]]*/'$userID'/g' getMySQLreactText.php
#cat practice.txt > getMySQLrealTimeTalk.php
#modify the date
sed -i -e '3s/[[:digit:]][[:digit:]]*/'$scheduleID'/g' getMySQLreactText.php

sed -i -e '2s/[[:digit:]][[:digit:]]*/'$userID'/g' getMySQLreactRecording.php
#cat practice.txt > getMySQLrealTimeTalk.php
#modify the date
sed -i -e '3s/[[:digit:]][[:digit:]]*/'$scheduleID'/g' getMySQLreactRecording.php

sed -i -e '2s/[[:digit:]][[:digit:]]*/'$userID'/g' getMySQLreactMotion.php
#cat practice.txt > getMySQLrealTimeTalk.php
#modify the date
sed -i -e '3s/[[:digit:]][[:digit:]]*/'$scheduleID'/g' getMySQLreactMotion.php


#print the list
#php getMySQLevent.php
#update the database
#php updateMySQLevent.php
#php
