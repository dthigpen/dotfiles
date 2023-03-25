#!/usr/bin/env bash
source ~/dotfiles/bash/base/.bashrc
source ~/dotfiles/bash/pop-os/env.sh
source ~/dotfiles/bash/pop-os/aliases.sh
msg 'Loaded pop-os config'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi