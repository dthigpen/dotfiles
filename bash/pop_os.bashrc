source ~/.dotfiles/bash/base.bashrc
source ~/.dotfiles/bash/pop_os_default.bashrc
source ~/.dotfiles/bash/prompt.sh

# Variables
export PATH=~/node-v17.1.0-linux-x64/bin:$PATH
export PATH=~/zig:$PATH
export PATH=~/dev/commands:$PATH
export EDITOR=micro
dev=~/dev

# Aliases
alias cdd="cd $dev"
alias cdn="cd ~/Documents/notes"
alias note="code ~/Documents/notes"

# Useful commands

# Sort directories by size
# du -m --max-depth 1 | sort -rn

# Checksum of directory
# find some_dir -type f -exec md5sum {} \; | sort -k 2 | md5sum

DOTNET_CLI_TELEMETRY_OPTOUT=1
. "$HOME/.cargo/env"
