# 瞎几把折腾

## install.sh

- pacman source
- firefox firefox-i18n-zh-cn
- fcitx-sogoupinyin
- openssh
- fonts
- sync clock
- zsh
- python
- autojump
- 网易音乐
- fzf
- rofi ?
- pycharm

## 还要做
### 选一个好看的字体

Source Code Pro有点丑
WenQuanYi Zen Hei Mono稍微能看一点,还是MAC舒服

- 已安装字体, `fc-list | cut -d: -f2`
- `fc-cache -fv` 刷新字体缓存

### 其他

- 搜狗开机启动，`～/.i3/config`
  - `exec --no-startuo-id fcitx`
- 桌面时钟显示方框，修改conky
  - `/usr/share/conky/conky_maia` 21:25, `font Bitstream Vera Sans` -> `font WenQuanYi Zen Hei`
  - 字体在安装的里面选择
- .Xresources 修改urxrt字体,`xrdb -merge .Xresources`生效设置

  ```
  xft.dpi:125  #设置dpi，对4k高分屏需要设置，设置成默认值的2倍试试。
  URxvt.font: xft:Source Code Pro:antialias=True:pixelsize=14,xft:WenQuanYi Zen Hei:pixelsize=14
  URxvt.boldfont: xft:Source Code Pro:antialias=True:pixelsize=14,xft:WenQuanYi Zen Hei:pixelsize=14
  ```
- status bar
  - 网络显示?
  - 时间显示?

## tools

- rofi replace dmenu
- xfce4-terminal 替换 urxvt

## python

3.3以后自带venv工具，`python -m venv venv`，也可以安装使用virtualenv工具.

## powerline custom

in archlinux powerline_root `/usr/lib/python3.7/site-packages/powerline`

export 路径 `$XDG_CONFIG_HOME`, `~/.config` , 在这个目录下建powerline目录

比如修改tmux的配置;

    cp /usr/lib/python3.7/site-packages/powerline/config_files/themes/tmux/default.json ~/.config/powerline/themes/tmux/default.json

其他的看官方文档修改, https://powerline.readthedocs.io/en/master/configuration.html

## 壁纸

- 透明度?
- 壁纸
-
