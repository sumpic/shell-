#!/bin/bash
#查找用bash作登录shell的用户,然后只留下用户名,作为i的取值范围
for i in $(sed -n '/bash$/s/:.*//p' /etc/passwd)
do
        #根据用户名查找密码相关信息,然后去头去尾留下密码给j
        j=$(sed -n "/^$i/s/$i://p" /etc/shadow | sed 's/:.*//')
        #把"用户名-->密码"写入文件
        echo "$i --> $j"
done
