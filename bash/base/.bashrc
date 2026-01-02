#!/usr/bin/env bash
# base configuration that all should inherit (source) from
source ~/dotfiles/bash/base/env.sh
source ~/dotfiles/bash/base/aliases.sh
source ~/dotfiles/bash/prompt.sh

# setup fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Generated for envman. (setup by shfmt)
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
