#!/bin/bash
while :					 	#无限循环
do
        read -p "请输入用户名:" username		#记录用户输入的信息
        if [ -z $username ];then			#用户没有输入时提示用户
                echo "用户名不能为空!"
        elif [ $username == exit ];then		#用户输入exit时退出
                break
        else
                id $username &> /dev/null		#查询用户输入的用户名
                if [ $? -eq 0 ];then			#能查到说明用户已存在,提示用户
                        echo "用户已存在!"
                else
                        useradd $username		#查不到说明用户不存在,创建用户
                        echo "用户${username}创建成功!"
                fi
        fi
done
