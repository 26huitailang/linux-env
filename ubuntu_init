一些需要的软件包
sudo apt-get install vim git zsh curl python-pip openssh

更改terminal为zsh
sudo chsh -s $(which zsh)

下载并安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

修改主题theme agnoster

解决字体问题，安装好后在terminal的设置里面选择。
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

精简 user@hostname：添加export DEFAULT_USER="username"到~/.zshrc中，可以隐藏固定的 user@hostname 信息。

开发用的虚拟环境管理
sudo pip install virtualenv virtualenvwrapper

添加到~/.zshrc中，这样virtualenvwrapper的设置在每次打开终端的时候生效。
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

第一次设置完可以source一下，或者新开终端。
source ~/.zsh

python3.6
添加第三方仓库
sudo add-apt-repository ppa:jonathonf/python-3.6
更新
sudo apt-get update
安装
sudo apt-get install python3.6

pip阿里源
mkdir ~/.pip
vim ~/.pip/pip.conf

[global]
trusted-host=mirrors.aliyun.com
index-url=https://mirrors.aliyun.com/pypi/simple/

vim配置
vim.md 中。

Postgresql

```
sudo apt-get install postgresql-9.5

sudo -u postgres psql
# ALTER USER postgres WITH PASSWORD '123456';
# \q
```

```
sudo passwd  # root 密码
su root
sudo passwd -d postgres  # DEL password
sudo -u postgres passwd  # set password
```
im哈皮的coding吧。
stgresSQL数据库配置实现远程访问

vi /etc/postgresql/9.4/main/postgresql.conf

1.监听任何地址访问，修改连接权限

#listen_addresses = 'localhost' 改为 listen_addresses = '*'

2.启用密码验证

#password_encryption = on 改为 password_encryption = on

vi /etc/postgresql/9.4/main/pg_hba.conf

在文档末尾加上以下内容

host all all 0.0.0.0 0.0.0.0 md5

6、重启服务

/etc/init.d/postgresql restart

7、5432端口的防火墙设置

5432为postgreSQL默认的端口

iptables -A INPUT -p tcp -m state --state NEW -m tcp --dport 5432 -j ACCEPT

