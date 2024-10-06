#!/usr/bin/env bash
source /home/infoh/shellscripts/private_path.sh
echo "What is done?"
read DONE
echo "How many times?"
read TIMES
curl -H "X-Title: $DONEが終了しました" -d "$TIMES回目" ntfy.sh/pracAPI
today=$(date +%Y-%m-%d\ \(%a\)\ %H:%M)
sed -i "1i\##\ $today\n🍅 $DONEを$TIMES達成しました" $pomodoro_count_path
