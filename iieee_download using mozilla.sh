#!/bin/bash
#ieee_mozill
iter=0
VALID_PASSWORD=5
function pause(){
   read -p "$*"
}


for i in `cat link.txt`
do
iter=$((iter+1))
#STRING="Hello, everybody"

#SHORT_STRING=`echo $STRING | cut -b 1-3`
SHORT_STRING=`echo $i | cut -b 1-59`
#echo $SHORT_STRING
#wget  -bqc $SHORT_STRING
#wget  -c $SHORT_STRING
# pkill -9 wget
firefox $SHORT_STRING
echo $iter
sleep 5
if [ "$iter" == "$VALID_PASSWORD" ]; then
	cp /tmp/mozplugger-7020/* backup
sleep 5
pkill firefox
iter=0
pause 'Press [Enter] key to continue...'
else
	continue
fi



done
