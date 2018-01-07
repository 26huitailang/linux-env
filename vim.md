VIM 配置

基础配置

配置文件在用户目录下~/.vimrc ,如果没有，就自己创建一个。


插件安装和配置

首先安装插件管家 Vundle:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
.vimrc 中添加配置使管家上任：
```
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin '你的插件'
call vundle#end()
filetype plugin indent on
```
# NERDTree

# ctags
用于创建类、函数等索引，并生成索引文件，默认为tags。
安装：
`sudo apt-get install ctags`

# taglist
