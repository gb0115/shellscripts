#!/usr/bin/env bash
# タイマーの時間を設定（単位：秒）
timer=5

# カウントダウン処理
while [ $timer -gt 0 ]
do
    echo -ne "Remaining time: $timer seconds\\033[0K\\r"
    sleep 1
    timer=$(( $timer - 1 ))
done

echo -e "Time's up!\\a"/
