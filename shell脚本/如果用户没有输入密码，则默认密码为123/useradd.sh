#!/bin/bash
read -p "请输入用户名:" u			 #记录用户名
useradd $u						#创建用户
stty -echo						#关闭回显
read -p "请输入密码:" p				 #记录密码
stty echo						#打开回显
echo ${p:-123} | passwd --stdin $u          #给用户设置密码,当没有输入密码时使用123
