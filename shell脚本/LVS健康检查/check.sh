#!/bin/bash
VIP=192.168.4.15:80
RIP1=192.168.4.100
RIP2=192.168.4.200
while :
do
        for IP in $RIP1 $RIP2
        do
                curl -s http://$IP &> /dev/null		#访问页面
                if [ $? -eq 0 ];then
                        ipvsadm -Ln | grep -q $IP || ipvsadm -a -t $VIP -r $IP	#能访问但不在集群里就加到集群里
                else
                        ipvsadm -Ln | grep -q $IP && ipvsadm -d -t $VIP -r $IP	#不能访问但在集群里就从集群中删除
                fi
        done
sleep 1	#休息1秒
done
