#!/usr/bin/env bash
GIT_COMPLETION_PATH=~/dotfiles/bash/git-completion.bash
GIT_PROMPT_PATH=~/dotfiles/bash/git-prompt.sh

# Define colors
RESET=$(echo -en '\001\033[0m\002')
GRAY=$(echo -en '\001\033[00;37m\002')
RED=$(echo -en '\001\033[01;31m\002')
GREEN=$(echo -en '\001\033[01;32m\002')
YELLOW=$(echo -en '\001\033[01;33m\002')
BLUE=$(echo -en '\001\033[01;34m\002')
MAGENTA=$(echo -en '\001\033[01;35m\002')
PURPLE=$(echo -en '\001\033[01;35m\002')
CYAN=$(echo -en '\001\033[01;36m\002')
WHITE=$(echo -en '\001\033[01;37m\002')
RED_BOLD=$(echo -en '\001\033[00;31m\002')
GREEN_BOLD=$(echo -en '\001\033[00;32m\002')
YELLOW_BOLD=$(echo -en '\001\033[00;33m\002')
BLUE_BOLD=$(echo -en '\001\033[00;34m\002')
MAGENTA_BOLD=$(echo -en '\001\033[00;35m\002')
PURPLE_BOLD=$(echo -en '\001\033[00;35m\002')
CYAN_BOLD=$(echo -en '\001\033[00;36m\002')
# also see: https://stackoverflow.com/questions/10466749/bash-colored-output-with-a-variable

# Source the git bash completion file and prompt file
[ -f "${GIT_COMPLETION_PATH}" ] && source "${GIT_COMPLETION_PATH}"
if [ -f "${GIT_PROMPT_PATH}" ]; then
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUNTRACKEDFILES=true
    GIT_PS1_SHOWUPSTREAM="auto"
    source "${GIT_PROMPT_PATH}"

    function _git_ps1_letters {
        local up_arrow=$(echo -e '\u2191')
        local dn_arrow=$(echo -e '\u2193')
        sed -E 's/=//' | # remove equal sign
        sed -E 's/\+/i/' | # i for indexed (staged)
        sed -E 's/\*/m/' | # m for modified (unstaged)
        sed -E 's/\$/s/' | # s for stashed
        sed -E 's/%/u/' | # u for untracked
        sed -E "s/>/${up_arrow}/" | # up arrow for ahead
        sed -E "s/</${dn_arrow}/" # down arrow for behind
    }
fi
PS1=''
PS1='`[ $? -eq 0 ] && echo -en "${GREEN_BOLD}✔" || echo -en "${RED_BOLD}✘"`${RESET}' # last cmd success/fail
PS1=$PS1'|\W'         # working dir basename
PS1=$PS1'`__git_ps1 "|${GREEN}%s${RESET}" | _git_ps1_letters`' # git
PS1=$PS1'|$ '         # shell character