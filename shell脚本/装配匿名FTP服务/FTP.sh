#!/bin/bash
yum -y install vsftpd							  #装vsftpd软件
cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.old		#备份
sed -i 's/^#anon/anon/' /etc/vsftpd/vsftpd.conf			#去掉注释
chmod 777 /var/ftp/pub						#授权
systemctl restart vsftpd							  #重启服务
systemctl enable vsftpd							  #开机自启
