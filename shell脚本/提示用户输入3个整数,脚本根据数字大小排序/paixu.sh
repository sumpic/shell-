#!/bin/bash
read -p '请输入第一个整数:' num1
read -p '请输入第二个整数:' num2
read -p '请输入第三个整数:' num3
if [ $num1 -lt $num2 ];then
        a=$num1
        num1=$num2
        num2=$a
fi
if [ $num1 -lt $num3 ];then
        a=$num1
        num1=$num3
        num3=$a
fi
if [ $num2 -lt $num3 ];then
        a=$num2
        num2=$num3
        num3=$a
fi
echo "三个数大到小依次是:${num1},${num2},${num3}"
