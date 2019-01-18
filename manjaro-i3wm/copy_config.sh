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

# 文件夹
cp -r powerline ~/.config/
cp -r .pip ~/

