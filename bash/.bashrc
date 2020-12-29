
# Load the OS .bashrc
. ~/pop.bashrc

# Variables
bashrc="~/.bashrc"
dev="~/dev"
notes="~/Documents/notes"

# Aliases
alias reload=". $bashrc"
alias cdd="cd $dev"
alias cdn="cd $notes"
alias note="code $notes"
alias open="xdg-open"
alias gs="git status"
alias py="python3"
alias inst="sudo apt install"
alias trash="gio trash"

# Default text editor
EDITOR=micro

# bind '"\e[A": history-search-backward'
# bind '"\e[B": history-search-forward'
#shopt -s autocd

# Bash Prompt
green='\[\033[01;32m\]'
blue='\[\033[01;34m\]'
nocolor='\[\033[00m\]'
root_prefix="${debian_chroot:+($debian_chroot)}"

PS1="$green"          # change color to green
PS1=$PS1'[\d] '       # date
PS1=$PS1$root_prefix  # root prefix
PS1=$PS1"$blue"       # change color to blue
PS1=$PS1'\W '         # working dir basename
PS1=$PS1"$nocolor"    # remove color
PS1=$PS1'\$ '         # shell character

# Useful commands

# Sort directories by size
# du -m --max-depth 1 | sort -rn