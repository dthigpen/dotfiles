#!/usr/bin/env bash
source ~/dotfiles/bash/base/env.sh

export EDITOR='micro'

# FZF configs in TERMUX
# Auto-completion
[[ $- == *i* ]] && source "$PREFIX/share/fzf/completion.bash" 2> /dev/null
# Key bindings
source "$PREFIX/share/fzf/key-bindings.bash"

# Using fd instead of find for fzf
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
# To apply the command to CTRL-T and ALT-C as well
export FZF_ALT_C_COMMAND="fd --type d"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export PATH=~/.local/bin/:"${PATH}"
