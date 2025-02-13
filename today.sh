#!/usr/bin/env bash
source /home/infoh/shellscripts/private_path.sh
today=$(date +%Y%m%d)
file="$today_path/$today.md" 
#日付ファイルあり
if [ -e $file ]; then
		# $1なし
    if [ -z "$1" ]; then
    sudo less $file
		# $1あり
    # sedにはsudoが必要
    else
    sudo sed -i "1i\ $1" $file
    fi
#日付ファイルなし
else
    sudo touch $today_path.$today.md
    sudo echo " " > $file
    sudo sed -i "1i\ $1" $file
    sudo echo "今日のファイルを作成しました"
fi

