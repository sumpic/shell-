#!/bin/bash
x=""		#颜色序号
z=1		#表示输出结果的行号
cecho(){						#定义函数
echo  -e "${z}:\t  \033[${x}m${txt}\033[0m"	#给内容染色
}
read -p "请输入一个数(必须大于31):" y		#颜色序号
read -p "请输入内容:" txt			#染色的内容
for((i=31;i<=y;i++))				
do						#进行x~y次的染色
        let x=i					#颜色序号加一
        cecho					#调用函数
        let z++					#行号加一
done
