#!/usr/bin/env bash
source ~/dotfiles/bash/base/env.sh
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=~/node-v18.13.0-linux-x64/bin:$PATH
export PATH=~/zig:$PATH
export PATH=~/.nimble/bin:$PATH
export PATH=~/dev/commands:$PATH
export PATH=~/dev/scripts:$PATH
export PATH=~/zig-linux-x86_64-0.11.0-dev.862+901c3e963:$PATH
export PATH=$PATH:/usr/local/go/bin
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export GOBIN=~/bin
export EDITOR=micro
# fly.io
export FLYCTL_INSTALL="/home/devd/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# setup fzf ( installed at ~/.fzf )
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

DOTNET_CLI_TELEMETRY_OPTOUT=1
. "$HOME/.cargo/env"


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=2000000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize