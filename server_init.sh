# 修改镜像源为aliyun
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo;
yum makecache;
# 安装必备组件
yum install bzip2-devel;
yum install ncurses-devel;
yum install sqlite-devel;
yum install gdbm-devel;
yum install xz-devel;
yum instaall tk-devel;
yum install readline-devel;
# python3.6.0 安装与/usr/local/python3 中
mkdir /usr/local/python3;
wget --no-check-certificate https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz;
tar -xzvf Python-3.6.0.tgz; # 解压缩包
cd Python-3.6.0; # 进入解压目录
sudo ./configure --prefix=/usr/local/python3; # 指定创建的目录
sudo make;
sudo make install;

# 安装uwsgi
yum install -y gcc* pcre-devel openssl-devel;
yum install -y python-devel;


#添加环境路径
cp /usr/local/python3/bin/python3.6 /usr/bin/python3;
cp /usr/local/python3/bin/pip3 /usr/bin/pip3;


#安装uwsgi
pip3 install uwsgi;

#安装django 1.11.8
pip3 install django==1.11.8;
cp /usr/local/python3/bin/django-admin /usr/bin/django-admin;

#安装tree
yum install tree;
