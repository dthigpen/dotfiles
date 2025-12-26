#!/usr/bin/env bash

export EDITOR='micro'
# android adb
export PATH="${PATH}":~/bin/platform-tools
# marmite markdown ssg
export PATH="${PATH}":~/bin/marmite
# racket lang
export PATH="${PATH}":/usr/racket/bin
# shfmt shell formatter
export PATH="${PATH}":~/bin/shfmt

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
