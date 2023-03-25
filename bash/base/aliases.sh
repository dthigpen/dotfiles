#!/usr/bin/env bash

# Additional alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# functions
function msg {
  echo >&2 -e "${1-}"
}

# some more ls aliases
alias rm='rm -i'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias reload="source ~/.bashrc"
alias open="xdg-open"
alias gs="git status"
alias inst="sudo apt install"
alias trash="gio trash"
alias xclip="xclip -selection c"
alias gopen="gio open"
alias py="python3"
alias gcd='LC_ALL=C; GIT_COMMITTER_DATE="$(date)"; git commit --amend --no-edit --date "$(date)"'