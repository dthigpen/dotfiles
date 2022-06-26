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

PS1=''
PS1='`[ $? -eq 0 ] && echo -en "OK" || echo -en "NOT OK"`'
PS1=$PS1' [\W]'         # working dir basename
PS1=$PS1'`__git_ps1`' # TODO: fix git prompt
PS1=$PS1'$ '         # shell character