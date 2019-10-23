# Vim 配置

## 判断vim对python的支持

`vim --version | grep python`

## 不支持，自己编译vim

### 下载vim8源码

`git clone https://github.com/vim/vim.git`

### 编译安装vim8

```
cd vim/src
make clean
./configure --with-features=huge --enable-python3interp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ --enable-rubyinterp --enable-luainterp --enable-perlinterp --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ --enable-multibyte --enable-cscope      --prefix=/usr/local/vim/
sudo make install
```

备注说明:

```
    --with-features=huge：支持最大特性
    --enable-rubyinterp：打开对ruby编写的插件的支持
    --enable-pythoninterp：打开对python编写的插件的支持
    --enable-python3interp：打开对python3编写的插件的支持
    --enable-luainterp：打开对lua编写的插件的支持
    --enable-perlinterp：打开对perl编写的插件的支持
    --enable-multibyte：打开多字节支持，可以在Vim中输入中文
    --enable-cscope：打开对cscope的支持
    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ 指定python 路径
    --with-python-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu/ 指定python3路径
    --prefix=/usr/local/vim：指定将要安装到的路径(自行创建)
```

如果出现问题请自得安装python-dev 再执行上面命令

```
    sudo apt-get install python-dev
    sudo apt-get install python3-dev
    sudo apt-get install libncurses5-dev
```

## 基础配置

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

## NERDTree

## ctags

用于创建类、函数等索引，并生成索引文件，默认为tags。
安装：
`sudo apt-get install ctags`

## taglist

## YCM 编译

- cd ~/.vim/bundle/YoucompleteMe/
- ./install.py --clang-completer --go-completer, include c/go family
- cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.vim/
