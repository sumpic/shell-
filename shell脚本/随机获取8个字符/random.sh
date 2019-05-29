#!/bin/bash
b=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789	#定义一个包含大小写字母和数字的变量
pw=						#定义密码
for i in {1..8}			  #密码长度为8
do
        s=$[RANDOM%62]			#获取随机数,随机数的范围与b的长度相等
        #echo -n ${b:s:1}
        p=${b:s:1}			#从b中的第s位取一个值
        pw=$pw$p				#将取出的值排在同一列,表示密码
done
#echo
echo $pw				  #输出密码
