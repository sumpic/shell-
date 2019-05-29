#!/bin/bash
x=0             #up的台数
y=0             #down的台数
for i in {1..12}
do
        ping -c 3 -i 0.2 -W 1 172.25.0.$i &> /dev/null	#c是包的数量,i是成功间隔,W是失败间隔
        if [ $? -eq 0 ];then
                echo "172.25.0.${i} is up"
                let x++					#统计up的台数
        else
                echo "172.25.0.${i} is down"
                let y++					#统计down的台数
        fi
done
echo "有${x}台up,${y}台down"

