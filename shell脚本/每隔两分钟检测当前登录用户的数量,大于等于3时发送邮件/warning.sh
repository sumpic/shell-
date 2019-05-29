#!/bin/bash
n=$(who | wc -l)		#统计当前登录的人数
[ n -ge 3 ] && echo "当前有$n个人登录服务器!" | mail -s warning root	#大于等于3人时发送警告邮件


#crontab -e					#编写周期性计划任务
#*/2 * * * * /opt/warning.sh

#chmod /opt/warning.sh

