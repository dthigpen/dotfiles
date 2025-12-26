#!/usr/bin/env bash

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=2000000

[[ ! -f "$HOME/.local/bin/env" ]] && source "$HOME/.local/bin/env"

[[ ! -d "$HOME/.local/bin" ]] && mkdir -p "$HOME/.local/bin"
[[ ":$PATH:" == *":${HOME}/.local/bin:"* ]] || export PATH="${PATH}:${HOME}/.local/bin"
