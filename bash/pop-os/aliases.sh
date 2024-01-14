#!/usr/bin/env bash
source ~/dotfiles/bash/base/aliases.sh

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


alias cdd="cd $dev"
alias cdn="cd ~/Documents/notes"
alias note="code ~/Documents/notes"
# Sort directories by size
alias size='du -m --max-depth 1 | sort -rn'
# Checksum of directory
alias md5dir='find some_dir -type f -exec md5sum {} \; | sort -k 2 | md5sum'
# esp-idf for esp32 microcontroller development
alias get_idf='source $HOME/esp/esp-idf/export.sh'