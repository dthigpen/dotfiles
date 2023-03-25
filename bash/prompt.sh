RESET=$(echo -en '\e[0m')
RED=$(echo -en '\e[0;31m')
GREEN=$(echo -en '\e[0;32m')
YELLOW=$(echo -en '\e[0;33m')
BLUE=$(echo -en '\e[0;34m')
MAGENTA=$(echo -en '\e[0;35m')
PURPLE=$(echo -en '\e[0;35m')
CYAN=$(echo -en '\e[0;36m')
GRAY=$(echo -en '\e[0;37m')
WHITE=$(echo -en '\e[1;37m')
RED_BOLD=$(echo -en '\e[1;31m')
GREEN_BOLD=$(echo -en '\e[1;32m')
YELLOW_BOLD=$(echo -en '\e[1;33m')
BLUE_BOLD=$(echo -en '\e[1;34m')
MAGENTA_BOLD=$(echo -en '\e[1;35m')
PURPLE_BOLD=$(echo -en '\e[1;35m')
CYAN_BOLD=$(echo -en '\e[1;36m')
# also see: https://gist.github.com/elucify/c7ccfee9f13b42f11f81

# source ~/.dotfiles/bash/git-prompt.sh
# Source the git bash completion file
GIT_COMPLETION_PATH=~/.dotfiles/bash/git-completion.bash
GIT_PROMPT_PATH=~/.dotfiles/bash/git-prompt.sh
[ -f "${GIT_COMPLETION_PATH}" ] && source "${GIT_COMPLETION_PATH}"
if [ -f "${GIT_PROMPT_PATH}" ]; then
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUPSTREAM="auto"
    source "${GIT_PROMPT_PATH}"
fi
# temp remove colors
GREEN_BOLD=''
GREEN=''
RED_BOLD=''
RESET=''
PS1=''
PS1='`[ $? -eq 0 ] && echo -en "${GREEN_BOLD}OK" || echo -en "${RED_BOLD}NOT OK"`${RESET}'
PS1=$PS1'|\W'         # working dir basename
PS1=$PS1"|${GREEN}`__git_ps1 '%s'`${RESET}" # TODO: fix git prompt
PS1=$PS1'|$ '         # shell character