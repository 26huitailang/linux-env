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
sudo pacman -Syyu  --noconfirm

# 工具
# firefox
sudo pacman -S firefox firefox-i18n-zh-cn --noconfirm
# sogou
sudo pacman -S fcitx-im --noconfirm
sudo pacman -S fcitx-configtool --noconfirm
sudo pacman -S fcitx-sogoupinyin --noconfirm
if ! grep "GTK_IM_MODULE" ~/.xprofile
then
	sudo sh -c "echo -e \"export GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport XMODIFIERS=\"@im=fcitx\"\" >> ~/.xprofile"
fi
# boot load ~/.i3/config exec --no-startuo-id fcitx

# openssh
sudo pacman -S openssh --noconfirm
sudo systemctl enable sshd
sudo systemctl start sshd

# fonts
pacman -S adobe-source-code-pro-fonts wqy-bitmapfont wqy-microhei wqy-zenhei
echo "vim ~/.Xresources
xft.dpi:125  #设置dpi，对4k高分屏需要设置，设置成默认值的2倍试试。
URxvt.font: xft:Source Code Pro:antialias=True:pixelsize=18,xft:WenQuanYi Zen Hei:pixelsize=18
URxvt.boldfont: xft:Source Code Pro:antialias=True:pixelsize=18,xft:WenQuanYi Zen Hei:pixelsize=18
"

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
sudo pacman -S powerline powerline-fonts
source /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

# 网易云音乐
sudo pacman -S netease-cloud-music

# autojump
sudo pacman -S autojump

# reboot
echo "sudo reboot"
