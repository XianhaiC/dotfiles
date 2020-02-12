# Created by newuser for 5.7.1

# zsh config
autoload -Uz compinit promptinit
compinit
promptinit
setopt COMPLETE_ALIASES

# backspace through anything
bindkey -v '^?' backward-delete-char

# This will set the default prompt to the walters theme
#export PS1='%n %m %c '
export PROMPT=$'\n''%F{green}%c%f'$'\n''%F{magenta}%n%f '

# colored prompt and folders/files
alias ls="ls -h --color=auto"
#export PS1='\[\033[01;35m\]\u@\h \[\033[01;33m\]\W \$ \[\033[00m\]'

# mailcap
#export MAILCAPS='~/.config/rtv/.mailcap'

# music directory USE ABSOLUTE PATH
export MUSIC_PATH='/home/mogu/music'

## PATH EXPORTS

# personal scripts
export PATH=$PATH:$HOME/.scripts

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

# processes
alias tree="pstree -p"
alias murder="killall -9"

# config related
alias urel="xrdb ~/.Xresources"

# youtube-dl quickies
alias ydlraw='youtube-dl -f bestaudio -i -o "~/music/.raw/%(title)s.%(ext)s" "https://www.youtube.com/playlist?list=PL5H5hNhQuW8F7EoUasSXKh659_Zu5gKzx"'
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

# simple-mtpfs
# mounts the first detected mtp device
alias mountphone='simple-mtpfs --device 1 ~/mnt'

# Git
alias gitname='git config user.name'
alias gitemail='git config user.email'

# rails
alias krs='kill -9 $(cat ~/projects/rails/whim/tmp/pids/server.pid)'

# whim project
alias whim="cd ~/projects/webdev/whim-app/whim-backend"
alias whimfs="cd ~/projects/webdev/whim-app/whim"
alias hexago="cd ~/projects/webdev/hexagonal-go"

# stupid git
alias got="git"
alias gut="git"
alias kermit="git commit"
alias all="git add -A"
alias ship="git push origin"
alias shup="git pull origin"
alias shipto="git push"
alias switch="git checkout"

# homelab related
alias hlmain="ssh root@192.168.1.222"
alias hldock="ssh rxpii@192.168.1.3"
alias hlplex="ssh rxpii@192.168.1.4"
alias hlseed="ssh rxpii@192.168.1.5"

# makepkg
alias mkpkg="makepkg -sic"
alias mkpkgf="makepkg -sif"

# suckless folder
alias suck="cd ~/builds/suckless"

# curl, to prevent zsh globbing on '?'
alias curl='noglob curl'

# curl rest api testing
alias curlp='curl --header "Content-Type: application/json" \
    --data'

# modify the cursor delay/repetition speed via xset
alias faast='xset r rate 250 45'
