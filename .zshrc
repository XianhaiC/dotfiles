# Created by newuser for 5.7.1

# zsh config
autoload -Uz compinit promptinit
compinit
promptinit
setopt COMPLETE_ALIASES

# backspace through anything
bindkey -v '^?' backward-delete-char

# reverse search
bindkey -v
bindkey '^R' history-incremental-search-backward

# This will set the default prompt to the walters theme
#export PS1='%n %m %c '
export PROMPT=$'\n''%F{green}%c%f'$'\n''%F{magenta}%n%f '

# colored prompt and folders/files
alias ls="ls -h --color=always"
#export PS1='\[\033[01;35m\]\u@\h \[\033[01;33m\]\W \$ \[\033[00m\]'

# mailcap
#export MAILCAPS='~/.config/rtv/.mailcap'

# music directory USE ABSOLUTE PATH
export MUSIC_PATH='/home/mogu/music'

# init rbenv by default
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

# wine
export WINEARCH=win32

## PATH EXPORTS

# personal scripts
export PATH=$PATH:$HOME/.scripts

# pip user modules
export PATH=$PATH:$HOME/.local/bin

# user app images
export PATH=$PATH:$HOME/apps

# npm user global package installations
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# pnpm
export PNPM_HOME="/home/maru/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Go
export GOPATH="$HOME/.go/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# bspwm config home
export XDG_CONFIG_HOME="$HOME/.config"

# bspwm config home
export EDITOR="vim"

## ALIASES

# general
alias lah="ls -lah"
alias cl="clear"
alias vimzrc="vim ~/.zshrc"
alias szrc="source ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tarc="tar -cvf"
alias tarx="tar -xvf"

# processes and sytem monitoring
alias ptree="pstree -p"
alias murder="killall -9"
alias space="df -h"
alias nspace="ncdu"
# delete logs older than 3 days
alias rmlogs="sudo journalctl --vacuum-time=3d"
alias power="cat /sys/class/power_supply/BAT0/capacity"

# config related
alias urel="xrdb ~/.Xresources"

# pacman
alias pacup='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias pacrm='sudo pacman -R'
alias pacwhere='pacman -Ql'
alias pacls='grep -i installed /var/log/pacman.log'
# cleans up orhpaned packages
alias paccl='sudo pacman -Rns $(pacman -Qtdq)'
alias pacrmcache='sudo pacman -Sc'
# does not work for some reason
#alias pacspace="pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -hr | less"

# youtube-dl quickies
alias ydlraw='youtube-dl -f bestaudio -i -o "~/music/.raw/%(title)s.%(ext)s" "https://www.youtube.com/playlist?list=PL5H5hNhQuW8HV8gxNxMK1G34kQkqEyyiE"'
alias ydlv='youtube-dl -f bestaudio -i -o "~/music/v/%(title)s.%(ext)s" "https://www.youtube.com/playlist?list=PL5H5hNhQuW8EIQ3XN8MTg6BLyI_A8TQfy"'
alias ydlkr='youtube-dl -f bestaudio -i -o "~/music/kr/%(title)s.%(ext)s" "https://www.youtube.com/playlist?list=PL5H5hNhQuW8HuwSgJgfnVGz9ueXPJSLrl"'
alias ydlnh='youtube-dl -f bestaudio -i -o "~/music/nh/%(title)s.%(ext)s" "https://www.youtube.com/playlist?list=PL5H5hNhQuW8G5uU0Ie0Po0jc0rHvnIEsu"'

# nordvpn
alias nvpnst='nordvpn status'
alias nvpnus='nordvpn c us'
alias nvpnhk='nordvpn c hk'

# gcalcli
alias gcalw='gcalcli calw'

# system tools
# check if system is 32 or 64 bit
alias 32or64='uname -a'

# mic test
alias mictest='arecord -vvv -f dat /dev/null'

# refresh keybindings
alias kbind='xmodmap ~/.Xmodmap && xset r rate 250 45'
# modify the cursor delay/repetition speed via xset
alias faast='xset r rate 250 45'

# load xmodmap in cases where you connect keyboard and bindings aren't correct
alias mod='xmodmap ~/.Xmodmap'

# kill Xserver
alias killx='killall Xorg'

# check keybindings in shell
alias bk='bindkey'

# simple-mtpfs
# mounts the first detected mtp device
alias mountphone='simple-mtpfs --device 1 ~/mnt'

# Git
alias gitname='git config user.name'
alias gitemail='git config user.email'
alias gitls='git ls-tree --name-only -r'
alias adog='git log --all --decorate --oneline --graph'
alias gsta='git status'
alias gadd='git add'

# stupid git
alias got="git"
alias gut="git"
alias kermit="git commit"
alias all="git add -A"
alias ship="git push origin"
alias shup="git pull origin"
alias shipto="git push"
alias switch="git checkout"
alias squash="git rebase -i"

# lisp psil
alias sbcl="rlwrap sbcl"

# doom emacs
alias doomsync="~/.emacs.d/bin/doom sync"

# rails
alias krs='kill -9 $(cat ~/projects/rails/whim/tmp/pids/server.pid)'

# homelab related
alias hlmain="ssh root@192.168.1.222"
alias hldock="ssh rxpii@192.168.1.3"
alias hlplex="ssh rxpii@192.168.1.4"
alias hlseed="ssh rxpii@192.168.1.5"

# ssh
alias sshagent='eval "$(ssh-agent -s)"'

# makepkg
alias mkpkg="makepkg -sic"
alias mkpkgf="makepkg -sif"

# suckless folder
alias suck="cd ~/builds/suckless"

# curl, to prevent zsh globbing on '?'
alias curl='noglob curl'
alias curlp='curl -H "Content-Type: application/json" \
    --data'


# install pip modules under the user in .local
alias pipu='pip install --user --upgrade'

# school
alias ieng6='ssh xhcao@ieng6.ucsd.edu'

# various util
alias weather='curl wttr.in/'
alias colortest='msgcat --color=test'

# map vim to nvim
#alias vim="nvim"

# give info vi bindings
alias info='info --vi-keys'

# functions

function cd_up() {
    cd $(printf "%0.0s../" $(seq 1 $1));
  }
alias 'up'='cd_up'

# fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# set default java version
alias archjava="archlinux-java status"
alias setjava19="sudo archlinux-java set java-19-openjdk"

# aws connect
alias awsmint='ssh -i ~/.ssh/mint-bot.pem ec2-user@ec2-18-222-218-179.us-east-2.compute.amazonaws.com'
alias msserv='ssh -i ~/.ssh/ms-server.pem ec2-user@ec2-3-21-41-174.us-east-2.compute.amazonaws.com'

# solidity dev
alias hh='npx hardhat'

# broot
#source /home/mogu/.config/broot/launcher/bash/br

# nvm
#source /usr/share/nvm/init-nvm.sh
