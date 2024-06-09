#!/usr/bin/env bash
SCRIPT_DIR="$( cd -P "$( dirname "$(readlink -f "${BASH_SOURCE[0]}")" )" >/dev/null 2>&1 && pwd )"

CONFIG_DIR=~/
# all files that start with .  e.g. .bashrc, .bash_profile 
for f in ${SCRIPT_DIR}/.*
do
	filename="$(basename "${f}")"
	ln -s "${f}" "${CONFIG_DIR}/${filename}" 
done
