#!/bin/bash
user=`awk -F: '/bash$/{print $1}' /etc/passwd`		 #查找符合条件的用户
for i in $user						#遍历用户
do
        echo -n "$i --> "					 #不换行输出用户名
        grep $i /etc/shadow | awk -F: '{print $2}'	 #找到用户的信息输出第二列即为密码
done
