#!/bin/bash
case $1 in
start)							#开启nginx
        /usr/local/nginx/sbin/nginx;;		
stop)							#关闭nginx
        /usr/local/nginx/sbin/nginx -s stop;;
restart)						#重启nginx
        /usr/local/nginx/sbin/nginx -s stop
        /usr/local/nginx/sbin/nginx;;
status)						#查看状态
        netstat -ntulp |grep -q nginx
        if [ $? -eq 0 ];then				#显示状态
                echo 服务已启动
        else
                echo 服务未启动
        fi;;
*)
        echo "start|stop|restart|status";;		#提示用法
esac
