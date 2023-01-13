# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mogu/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/mogu/.fzf/bin"
fi

# Customize colors
# ----------------
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#AAAAAA,bg:-1,hl:#666666
  --color=fg+:#000000,bg+:-1,hl+:#3a8bb0
  --color=info:#AAAAAA,prompt:#666666,pointer:#666666
  --color=marker:#87ff00,spinner:#666666,header:#87afaf
'

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/mogu/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/mogu/.fzf/shell/key-bindings.zsh"
