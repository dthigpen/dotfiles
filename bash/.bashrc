#!/usr/bin/env bash
# if not running interactively, don't do anything
[[ $- == *i* ]] || return

# source the host specific config, otherwise use the default
if [ -f ~/dotfiles/bash/${HOSTNAME}/.bashrc ]
then
    source ~/dotfiles/bash/${HOSTNAME}/.bashrc
elif echo "${PREFIX}" | grep -q termux
then
    source ~/dotfiles/bash/termux/.bashrc
else
    source ~/dotfiles/bash/default/.bashrc
fi
