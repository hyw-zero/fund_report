#!/bin/bash

while true
do
    TODA=`date '+%u'`
    TIME=`date '+%H:%M'`
    CLOCK="14:40" 
    if [ $(($TODA)) -lt 6 ] && [ $TIME = $CLOCK ];then 
        echo /dev/null > fund_log
        echo "---------RUN------------"
        echo $DATE
        python3 ./main.py
        sleep 60
	else
		echo "--NO RUN--"
        echo `date`
		sleep 30
    fi
done
