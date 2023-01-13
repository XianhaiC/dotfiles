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

# setup history
export SAVEHIST=1000
export HISTSIZE=1000
export HISTFILE=~/.zsh_history

# This will set the default prompt to the walters theme
#export PS1='%n %m %c '
export PROMPT=$'\n''%F{green}%c%f'$'\n''%F{white}λ%f '

# colored prompt and folders/files
alias ls="ls -h --color=always"
#export PS1='\[\033[01;35m\]\u@\h \[\033[01;33m\]\W \$ \[\033[00m\]'

# mailcap
#export MAILCAPS='~/.config/rtv/.mailcap'

# music directory USE ABSOLUTE PATH
export MUSIC_PATH='/home/mogu/music'

# init rbenv by default
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# use an editor with man
export MANPAGER='/bin/bash -c "nvim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

export EDITOR="vim"


## PATH EXPORTS

# personal scripts
export PATH=$PATH:$HOME/.scripts

# pip user modules
export PATH=$PATH:$HOME/.local/bin

# cargos
export PATH=$PATH:$HOME/.cargo/bin

# lisp roswell
export PATH=$PATH:$HOME/.roswell/bin

# go
export GO111MODULE=auto
export GOPATH=$HOME/projects/go
export PATH=$PATH:$GOPATH/bin
# ensure binaries are installed under go path
export GOBIN=$HOME/.go/bin

# npm user global package installations
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# Ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# bspwm config home
export XDG_CONFIG_HOME="$HOME/.config"

## ALIASES

# general
alias lah="ls -lah"
alias cl="clear"
alias vimzrc="vim ~/.zshrc"
alias szrc="source ~/.zshrc"
alias tarc="tar -cvf"
alias tarx="tar -xvf"
alias shutowo="shutdown now"
alias vol='pulsemixer'
alias dupterm='nohup alacritty --working-directory=$(pwd) &'

# vim
alias vim="nvim"
alias vimrc="vim ~/.vimrc"

# emacs
alias doomsync="~/.emacs.d/bin/doom sync"
alias em="emacs -nw"
alias ec='emacsclient --create-frame --alternate-editor=""'

# processes and sytem monitoring
alias ptree="pstree -p"
alias murder="killall -9"
alias space="df -h"
# delete logs older than 3 days
alias rmlogs="sudo journalctl --vacuum-time=3d"

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
alias pacrmcache='sudo pacman -Scc'
alias pacrmorph='sudo pacman -Rns $(pacman -Qtdq)'
# does not work for some reason
alias pacspace="pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -hr | less"
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

# modify the cursor delay/repetition speed via xset
alias faast='xset r rate 300 30'

# check keybindings in shell
alias bk='bindkey'

# get the window name, click on a window after running this
alias winname='xprop | rg "WM_CLASS"'

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

# ssh key gen related
# add ssh keys to the ssh agent via `ssh-add <private_key_file>`
alias sshkey='ssh-keygen -t ed25519 -C'
alias sshstart='eval "$(ssh-agent -s)"'
alias clip='xclip -selection clipboard <'

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

# rails
alias krs='kill -9 $(cat ~/projects/rails/whim/tmp/pids/server.pid)'

# homelab related
alias hlmain="ssh root@192.168.1.222"
alias hldock="ssh rxpii@192.168.1.3"
alias hlplex="ssh rxpii@192.168.1.4"
alias hlseed="ssh rxpii@192.168.1.5"

# ssh
alias sshagent='eval `ssh-agent -s`'

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
# list out what processes are using which ports
alias portlist='sudo lsof -i -P -n'

# map common program names
alias tmux="tmux -f ~/.config/tmux/tmux.conf"
alias mkdir="mkdir -p"
alias inf="neofetch"
alias sbcl="rlwrap sbcl"
alias clojure="rlwrap clojure"
alias ocaml="rlwrap ocaml"

# solidity dev
alias hh='npx hardhat'

# functions

function cd_up() {
    cd $(printf "%0.0s../" $(seq 1 $1));
  }
alias 'up'='cd_up'

# fuzzy search
[ -f ~/.config/fzf/fzf.zsh ] && source ~/.config/fzf/fzf.zsh

# broot
source /home/mogu/.config/broot/launcher/bash/br

# nnn file manager keybindings
export NNN_PLUG='f:fzcd;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'

# opam configuration
test -r /home/mogu/.opam/opam-init/init.zsh && . /home/mogu/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
