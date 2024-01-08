#!/usr/bin/env bash
source ~/dotfiles/bash/base/.bashrc
source ~/dotfiles/bash/termux/env.sh
source ~/dotfiles/bash/termux/aliases.sh

# set git editor to micro
git config core.editor micro
msg "Loaded termux config"
