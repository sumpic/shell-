#!/bin/bash
yum -y install gcc openssl-devel pcre-devel	#安装依赖包
useradd -s /sbin/nologin nginx				#创建用户,为了安全
tar -xf /opt/nginx-1.12.2.tar.gz			#释放tar包
cd /opt/nginx-1.12.2					#进入目录
#		-- 指定安装路径		 -- 指定用户	  -- 指定组	    --额外安装一个模块
./configure --prefix=/usr/local/nginx --user=nginx --group=nginx --with-http_ssl_module
make && make install 			     #编译并安装
