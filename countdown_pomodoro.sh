#!/usr/bin/env bash
let start_time="$(date +%s)";

# container of function start_timer()
function main(){
	start_timer
	exit 0
}

# function itself [1] mean like 1 on [1 -ge 5] 
function start_timer(){
	while [ 1 ];
	do
    #25minute in seconds
    let goal_time=$((25*60))
		let current_time="$(date +%s)"
		let seconds=$current_time-$start_time;
    let remain=$goal_time-$seconds;
    printf "\r\U1F345%02d:%02d" "$((remain/60%60))" "$((remain%60))"
		sleep 1;
    if [ $remain -eq 0 ];
      then
        echo -en "\007"
    fi
	done
}
main 
