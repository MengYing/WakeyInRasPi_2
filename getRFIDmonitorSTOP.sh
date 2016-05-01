#!/bin/bash
Siganl=$(head -n2 signal.txt | tail -n 1)
while [ -n $Signal ]
do
 head -n 1 ../../../Wakey/rtTagIDTxt.txt  | sed 's/\(\[\|\]\)//g' | sed 's/,//g' |sed 's/  *//g' >  ../../../Wakey/rtTagIDTxtnewMONITOR.txt
 temp=$( diff ../../../Wakey/rtTagIDTxtnewMONITOR.txt ../../../Wakey/rtTagIDTxttempMONITOR.txt | head -n1 )
 echo ${temp}
 if [ "${temp}" != "" ]
 then
 echo  detect
  head -n 1 ../../../Wakey/rtTagIDTxt.txt  | sed 's/\(\[\|\]\)//g' | sed 's/,//g' |sed 's/  *//g' >  ../../../Wakey/rtTagIDTxttempMONITOR.txt 
  sh getRFIDSTOP.sh
  else
  echo no signal
  fi
 
done
