#!/usr/bin/env bash
source /home/infoh/shellscripts/private_path.sh
today=$(date +%Y%m%d)
file="$today_path/$today.md" 
if [ -e $1 ]; then
 if [ -e $file ]; then
     sed -i "1i $1" $file
 else
     touch $today_path.$today.md
     echo " " > $file
     sed -i "1i $1" $file
 fi
else
echo "not"
fi

