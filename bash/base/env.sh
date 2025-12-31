#!/usr/bin/env bash

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=2000000

[ -d "${HOME}/bin" ] && export PATH="${PATH}:${HOME}/bin"
[ -d "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"
