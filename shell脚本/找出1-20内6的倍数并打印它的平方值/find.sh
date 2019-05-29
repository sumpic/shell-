#!/bin/bash
for i in {1..20}			  #限定范围
do
        n=$[i%6]				#求余,结果为0则符合条件
        [ $n -ne 0 ] && continue	#结果不为0的跳过,但循环不结束
        echo $[i*i]			#输出符合条件的值的平方
done
