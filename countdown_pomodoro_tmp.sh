#!/usr/bin/env bash
source /home/infoh/shellscripts/private_path.sh
let start_time="$(date +%s)";
powderblue=$(tput setaf 153)
normal=$(tput sgr0)

# container of function start_timer()
function main(){
	start_timer
	exit 0
}
function pomodoro_count(){
  today=$(date +%Y-%m-%d\ \(%a\)\ %H:%M)
  sed -i "1i\##\ $today\n🍅" $pomodoro_count_path
}

# function itself [1] mean like 1 on [1 -ge 5] 
function start_timer(){
	while [ 1 ];
	do
    #25minute in seconds
    let goal_time=$((10))
    let rest_time=$((5))+$goal_time;
		let current_time="$(date +%s)"
		let seconds=$current_time-$start_time;
    let remain=$goal_time-$seconds;
    let rest_remain=$rest_time-$seconds;
    if [ $remain -gt 0 ]; then
    printf "\r\U1F345%02d:%02d" "$((remain/60%60))" "$((remain%60))"
    sleep 1;
    elif [ $remain -eq 0 ]; then 
    sleep 1;
    printf "\r\U1F345%02d:%02d" "$((0/60%60))" "$((0%60))"
    pomodoro_count
    tmux display-popup "nvim /home/infoh/pomodoro"
    echo -en "\007"
    elif [ $remain -lt 0 ]; then
    sleep 1;
    printf "\r\U1F4A4%02d:%02d" "$((rest_remain/60%60))" "$((rest_remain%60))"
      if [ $rest_remain -eq 0 ]; then 
      echo -en "\007"
      printf "\r%s\n" "FINISHED"
    exit 0
    fi
    fi
	done
}
main 

#改良点
#今日のpomodoro数をtomatoで表示
#scriptをdailyで動かすには？
