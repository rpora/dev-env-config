#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

case "$TERM" in
    xterm-color|xterm-256color) color_prompt=yes;;
esac

export PS1='\[\e[34m\]\u@\H \[\e[31m\]\w \[\e[32m\]\\$ \[\e[0m\]'

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias vi='nvim'
alias vim='nvim'
alias nv='nvim'

# store and recall last cd
alias ds='pwd > /tmp/cwd'
alias dr='cd "$(</tmp/cwd)"'

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

source ~/.bash_completion/alacritty
