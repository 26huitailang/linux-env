# If you come from bash you might have to change your $PATH.
export EDITOR=nvim
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/bin/:${PATH}
export PATH=/usr/local/share/python:$PATH
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH=/Users/26huitailang/Downloads/apache-maven-3.5.4/bin:$PATH
export PATH="/user/local/opt/postgresql@10/bin":$PATH
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-10.0.2.jdk/Contents/Home"
export JAVA_HOME="/usr/local/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home"
# rust
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.wasmer/bin:$PATH"
# golang
export GOROOT=/Users/26huitailang/sdk/go1.20
#export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/gopath
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:$GOPATH/src/github.com/uber/go-torch/FlameGraph
# python
#export PATH=$PATH:/Users/26huitailang/Library/Python/3.9/bin
export TAG=`date +DEPLOYED-%F/%H%M`
export GOPROJECT=$HOME/go-project
# nvm
# export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Path to your oh-my-zsh installation.
export ZSH=/Users/26huitailang/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
#ZSH_THEME="amuse"
ZSH_THEME="half-life"
# ZSH_THEME="robbyrussell"
DEFAULT_USER="26huitailang"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  autojump
  brew
  docker
  docker-compose
  fabric
  git
  npm
  tmux
  #virtualenv
  vagrant
  zsh-autosuggestions
  fzf
  pyenv
)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/10/bin

# ---------- alias start ----------
# alias 可以查看所有可用列表
# ssh
alias sshpi="ssh pi@192.168.1.23"
alias ssh145="ssh root@192.168.8.145"
alias ssh240="ssh root@192.168.8.240"
alias ssh-lq-end="ssh root@192.168.8.109"
alias ssh-lq-container="ssh root@192.168.8.123"
alias sshhk119.28.204.141="ssh root@119.28.204.141"
alias lsof-port='func() { sudo lsof -nP -iTCP:$1 -sTCP:LISTEN;}; func'
alias lsof-pid='func() { lsof -p $1;}; func'
alias lsof-name='func() { sudo lsof -nP -iTCP -sTCP:LISTEN | grep $1;}; func'
alias lsof-all='func() { sudo lsof -nP -iTCP -sTCP:LISTEN}; func'
alias ps-grep='func() {ps -ef | grep $1;}; func'
alias pc="proxychains4 -f ~/.proxychains.conf"
alias proxy='export all_proxy=socks5://127.0.0.1:1080'
alias unproxy='unset all_proxy'
proxy_on() {
    export http_proxy=http://127.0.0.1:1080
    export https_proxy=http://127.0.0.1:1080
    echo "test curl https://google.com"
    curl https://google.com
    echo "proxy on finished"
}
proxy_off() {
    unset http_proxy
    unset https_proxy
    echo "proxy off"
}
set_npm_taobao() {
    npm config set registry https://registry.npm.taobao.org
}
wireshark_chown() {
    cd /dev
    sudo chown `whoami`:admin bp*
}
pdm_venv_activate() {
    eval $('pdm' 'venv' 'activate' "$1")
}
function pyinstall() {
    v=$1
    echo '准备按照 Python' $v
    curl -L https://npm.taobao.org/mirrors/python/$v/Python-$v.tar.xz -o ~/.pyenv/cache/Python-$v.tar.xz
    pyenv install $v
}

# git
# 详见~/.oh-my-zsh/plugins/git/git.plugin.zsh
# ---------- alias end   ----------
# . /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# --- fzf start ---
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# --- fzf end ---

# tldr
# complete -W "$(tldr 2>/dev/null --list)" tldr
#eval "$(pyenv init -)"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
        cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
        rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}

# alias
alias gf=gf
alias vim=nvim
if [ -n "$PYTHONPATH" ]; then
    export PYTHONPATH='/usr/local/Cellar/pdm/1.12.2/libexec/lib/python3.10/site-packages/pdm/pep582':$PYTHONPATH
else
    export PYTHONPATH='/usr/local/Cellar/pdm/1.12.2/libexec/lib/python3.10/site-packages/pdm/pep582'
fi
alias ocr='pngpaste - | tesseract -l chi_sim stdin stdout'

# Wasmer
export WASMER_DIR="/Users/26huitailang/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
export PATH="/usr/local/opt/postgresql@13/bin:$PATH"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


