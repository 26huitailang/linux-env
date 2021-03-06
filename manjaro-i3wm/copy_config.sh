#!/bin/sh
cp .xprofile ~/.xprofile
cp .Xresources ~/.Xresources
cp .zshrc ~/.zshrc
cp .i3/* ~/.i3/
cp .vimrc ~/.vimrc
cp .vimrc ../vim/.vimrc  # 拷贝一份到vim维护文件夹
cp wallpaper.sh ~/wallpaper.sh
chmod +x ~/wallpaper.sh
cp .npmrc ~/.npmrc
sudo cp start_conky_fontawesome /usr/bin/
sudo chmod +x /usr/bin/start_conky_fontawesome
sudo cp docker/daemon.json /etc/docker/

# 文件夹
cp -r powerline ~/.config/
cp -r .pip ~/
cp -r conky ~/.config/
cp -r i3status ~/.config/
