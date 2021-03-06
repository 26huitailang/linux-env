#!/bin/sh
# 国内源
sudo pacman-mirrors -GB testing -c China

# 判断并增加archlinuxcn
if ! grep "[archlinuxcn]" /etc/pacman.conf
then
	sudo sh -c "echo -e \"[archlinuxcn]\nServer = https://mirrors.ustc.edu.cn/archlinuxcn/$arch\" >> /etc/pacman.conf"
fi

sudo pacman -Syu --noconfirm
sudo pacman -S archlinuxcn-keyring --noconfirm
sudo pacman -Syu  --noconfirm

# 工具
# firefox
sudo pacman -S firefox firefox-i18n-zh-cn --noconfirm
# sogou
sudo pacman -S fcitx-im --noconfirm
sudo pacman -S fcitx-configtool --noconfirm
sudo pacman -S fcitx-sogoupinyin --noconfirm
# boot load ~/.i3/config exec --no-startuo-id fcitx

# xfce4-terminal
sudo pacman -S xfce4-terminal --noconfirm
sudo pacman -S compton --noconfirm  # 透明问题

# openssh
sudo pacman -S openssh --noconfirm
sudo systemctl enable sshd
sudo systemctl start sshd

# fonts
sudo pacman -S adobe-source-code-pro-fonts wqy-bitmapfont wqy-microhei wqy-zenhei --noconfirm
sudo pacman -S ttf-font-awesome  --noconfirm

# clock sync
sudo hwclock --systohc
sudo ntpdate -u ntp.api.bz

# zsh
# zsh-doc -> /usr/share/doc/zsh
sudo pacman -S zsh zsh-doc --noconfirm
# 安装 oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# sudo pacman -S manjaro-zsh-config # manjaro zsh config
# cp /etc/skel/.zshrc ~/.zshrc # 复制到用户目录
zsh # 启动
chsh -s /bin/zsh # 默认启动zsh

# python
sudo pacman -S python-pip --noconfirm  # python pip/pip3 both for py3
sudo pip install virtualenvwrapper

# cmake
sudo pacman -S cmake --noconfirm

# vscode
sudo pacman -S visual-studio-code-bin --noconfirm

# powerline
sudo pacman -S powerline powerline-fonts --noconfirm
source /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

# 网易云音乐
sudo pacman -S netease-cloud-music

# autojump
sudo pacman -S autojump --noconfirm

# enpass
sudo pacman -S enpass-bin

# nodejs
sudo pacman -S nvm --noconfirm

# git gui
sudo pacman -S gitkraken --noconfirm

# redis
sudo pacman -S redis

# postman
sudo pacman -S postman-bin

# docker
sudo pacman -S docker docker-compose
# 非root使用docker
sudo groupadd docker
sudo gpasswd -a ${USER} docker

# reboot
echo "sudo reboot"
