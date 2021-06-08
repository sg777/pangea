#!/bin/bash
SHELL=/bin/sh PATH=/bin:/sbin:/usr/bin:/usr/sbin
block_height=$(chips-cli getblockcount)
current_time=$(date +'%s')
day_seconds=86400
time_in_seconds=604800 #you can set this value to whichever time you want
temp=$block_height
avg_blocktime=10
while :
do
	blockhash=$(chips-cli getblockhash $temp)
	block=$(chips-cli getblock $blockhash)	
	blocktime=$(jq -r '.time' <<< ${block})
	if [ $(($blocktime+$time_in_seconds)) -le $current_time ]; then
		echo "blocks mined in last day is $(($block_height-$temp))"
		break;
	fi
	
	((temp=temp-1)) 
	decrement=$(($(($blocktime+$time_in_seconds-$current_time))/$avg_blocktime))
	((temp=temp-decrement))
done
diff_bh=$(($block_height-$temp))
week_stats=$(chips-cli getchaintxstats $diff_bh) #86400 seconds per day/10*7 days
wtc=$(jq -r '.window_tx_count' <<< ${week_stats})
echo "total tx's happened last day including mining tx's :: $wtc"
tpd=$(bc <<<"${wtc}-$diff_bh")
echo "${tpd} non mining  transactions in last $(($time_in_seconds/$day_seconds)) days"
