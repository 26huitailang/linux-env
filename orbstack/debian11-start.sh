#!/bin/bash
sudo apt update && apt install apt-transport-https ca-certificates
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cat << EOF > /etc/apt/sources.list
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye main contrib non-free

deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-updates main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-updates main contrib non-free

deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-backports main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-backports main contrib non-free

# deb https://mirrors.tuna.tsinghua.edu.cn/debian-security bullseye-security main contrib non-free
# # deb-src https://mirrors.tuna.tsinghua.edu.cn/debian-security bullseye-security main contrib non-free

deb https://security.debian.org/debian-security bullseye-security main contrib non-free
# deb-src https://security.debian.org/debian-security bullseye-security main contrib non-free
EOF
sudo apt update
sudo apt install git
# python
sudo apt install python3 python3-dev python3-venv
# python pdm
if command -v pdm > /dev/null 2>&1; then
	echo "pdm exists"
else
	echo "pdm not exists, installing"
    curl -sSL https://raw.githubusercontent.com/pdm-project/pdm/main/install-pdm.py | python3 -
    echo "export PATH=/root/.local/bin:$PATH" >> ~/.bashrc
    source ~/.bashrc
    pdm config pypi.url "https://pypi.tuna.tsinghua.edu.cn/simple"
    pdm self update
fi
# pyenv
command -v pyenv > /dev/null || [ ! -d "/root/.pyenv" ] || (curl https://pyenv.run | bash)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if [ `grep -c "PYENV_ROOT" ~/.bashrc` -eq '0' ]; then
    cat << \EOF >> ~/.bashrc
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOF
fi
source ~/.bashrc
