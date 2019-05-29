#!/bin/bash
echo "请根据以下提示选择您的出拳手势"
echo "1.石头"
echo "2.剪刀"
echo "3.布"
echo "其他.退出"
while :
do 
	game=(石头,剪刀,布)
	n=$[$RANDOM%3]
	computer=$game[$n]
	read -p "请选择1-3:" person
	case $person in
	1)
		[ $n -eq 0 ] && echo "平局"
		[ $n -eq 1 ] && echo "恭喜你赢了!"
		[ $n -eq 2 ] && echo "真遗憾你输了.";;
	2)
		[ $n -eq 1 ] && echo "平局"
		[ $n -eq 2 ] && echo "恭喜你赢了!"
		[ $n -eq 0 ] && echo "真遗憾你输了.";;
	3)
		[ $n -eq 2 ] && echo "平局"
		[ $n -eq 0 ] && echo "恭喜你赢了!"
		[ $n -eq 1 ] && echo "真遗憾你输了.";;
	*)
		echo "bye"
		break
	esac
done
