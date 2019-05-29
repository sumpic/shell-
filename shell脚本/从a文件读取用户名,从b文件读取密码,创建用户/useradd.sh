#!/bin/bash
u=1             #用户的序号
for name in $(cat $1)           #循环创建用户
do
        useradd $name           #创建用户
        p=$(head -$u $2 | tail -1)              #获取对应的密码
        echo $p | passwd --stdin $name          #给用户设置密码
        let u++                 #下一个用户的序号
done
