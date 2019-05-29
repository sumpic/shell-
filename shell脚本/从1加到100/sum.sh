#!/bin/bash
sum=0						#总和
for i in {1..100}			 #i是当前的数
do
        let sum=sum+i			#总和加上i为新的总和
done
echo $sum
