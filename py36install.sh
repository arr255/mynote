# 安装环境
yum -y install wget gcc c++make zlib-devel readline-devel bzip2-devel ncurses-devel sqlite-devel gdbm-devel xz-devel tk-devel openssl-devel 
# 下载rpm
yum -y install https://centos6.iuscommunity.org/ius-release.rpm
# 安装
yum makecache
yum install python36u
yum install python36u-pip
yum install python36u-devel
