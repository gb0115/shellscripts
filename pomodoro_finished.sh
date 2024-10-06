#!/usr/bin/env bash
source /home/infoh/shellscripts/private_path.sh
#tmux display-popup "bash /home/infoh/shellscripts/pomodoro_finished.sh"
today=$(date +%Y-%m-%d\ \(%a\)\ %H:%M)
echo "What is done?"
read DONE
echo "How many times?"
read TIMES
sed -i "1i\##\ $today\n🍅 $DONEを$TIMES達成しました。" $pomodoro_count_path
curl -H "X-Title: $DONEが終了しました" -d "$TIMES" ntfy.sh/pracAPI
exit

