#!/bin/bash
#查看CPU负载
echo -ne "CPU负载:\t"
uptime | awk '{print $(NF-2)}' | sed 's/,//'
#查看网卡流量
echo -ne "网卡流量:\t"
ifconfig eth0 | awk '/RX p/{print $5/1024,"KiB"}'
#查看内存信息
echo -ne "内存剩余:\t"
free | awk '/Mem/{print $4/1024,"KiB"}'
#查看磁盘空间
echo -ne "磁盘剩余:\t"
df -h | awk '/\/$/{print $4}'
#查看计算机账户数量
echo -ne "账户数量:\t"
cat /etc/passwd | awk 'END{print NR}'
#查看登录账户数量
echo -ne "登录账户:\t"
who | awk 'END{print NR}'
#查看启动的进程数量
echo -ne "进程数量:\t"
ps aux | awk 'END{print NR}'
#查看已安装软件包数量
echo -ne "软件包数量:\t"
rpm -qa | awk 'END{print NR}'
