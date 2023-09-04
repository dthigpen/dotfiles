#!/usr/bin/env bash
# if not running interactively, don't do anything
[[ $- == *i* ]] || return

# source the host specific config, otherwise use the default
if [ -f ~/dotfiles/bash/${HOSTNAME}/.bashrc ]
then
    source ~/dotfiles/bash/${HOSTNAME}/.bashrc
else
    source ~/dotfiles/bash/default/.bashrc
fi
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
