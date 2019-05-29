#!/bin/bash
sum=0					#总和
while : 
do
        read -p "请输入一个数(0是结束):" n	#记录用户输入的数
        [ $n -eq 0 ] && break			#当用户输入0时结束
        #sum=$[sum+n] 				#三种计算方式
        #let sum+=n 
        sum=$(expr $sum + $n)
done
echo "总和是$sum"			#输出总和
