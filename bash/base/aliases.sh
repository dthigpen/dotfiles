#!/usr/bin/env bash

# Additional alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

function msg {
  echo >&2 -e "${1-}"
}

function activate {
  for d in env venv
  do
    local path="${d}/bin/activate"
    if [[ -f "${path}" ]]
    then
      source "${path}"
      return
    fi
  done
  msg 'Error could not find python venv dir to activate'
  return 1
}

# some more ls aliases
alias rm='rm -i'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias grep='grep --color=auto'
alias reload="source ~/.bashrc"
alias open="xdg-open"
alias gs="git status"
alias inst="sudo apt install"
alias trash="gio trash"
alias xclip="xclip -selection c"
alias py="python3"
