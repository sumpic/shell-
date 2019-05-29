#!/bin/bash
user=`sed -n '/bash$/s/:.*//p' /etc/passwd`	#查找用bash作登录shell的用户,然后只留下用户名
for i in $user					#遍历账号记录
do
	pass1=$(grep $i /etc/shadow)			#利用用户名查找密码
	pass2=${pass1#*:}					#去掉第一个:前的内容
	pass=${pass2%%:*}					#去掉第一个:后的内容
	echo "$i --> $pass"				#格式化输出
done
