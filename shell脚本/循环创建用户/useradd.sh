#!/bin/bash
read -p "请输入用户名:" username			#记录用户名
while [ "$username" != exit ]			#当用户输入exit时退出
do
        if [ -z $username ];then			#当用户没有输入用户时提示用户
                echo "用户名不能为空!"			
        else
                id $username &> /dev/null		#查询用户输入的用户名
                if [ $? -eq 0 ];then			#能查到信息说明用户已存在,提示用户
                        echo "用户已存在!"
                else
                        useradd $username		#查不到信息说明用户不存在,创建用户
                        echo "用户${username}创建成功!"
                fi
        fi
        read -p "请输入用户名:" username		#继续让用户创建新的用户
done
