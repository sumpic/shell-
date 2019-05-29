#!/bin/bash
#while read固定格式,获取用户名
sed -n '/bash$/s/:.*//p' /etc/passwd | while read user;do
        #获取密码
        pass=`sed -rn "s/${user}:([^:]+).*/\1/p" /etc/shadow`
        #输出"用户名 --> 密码"并保存
        echo "${user} --> ${pass}"
done
