#!/bin/bash
i=$[RANDOM%101]         #生成一个随机数
x=0                     #存储猜错的次数
while : 
do
        let x++                         #记录猜错的次数
        read -p "请输入一个数字(0~100):" j      #记录用户输入的数
        if [ $i -eq $j ];then           #猜对
                echo "恭喜您猜对了!"
                break                   #跳出循环
        elif [ $i -gt $j ];then         #猜小了
                echo "真遗憾猜小了!"    
        else                            #猜大了
                echo "真遗憾猜大了!"
        fi
done
echo "您一共猜错$[x-1]次."              #告诉用户猜错多少次
