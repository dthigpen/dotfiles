#!/usr/bin/env bash
SCRIPT_DIR="$( cd -P "$( dirname "$(readlink -f "${BASH_SOURCE[0]}")" )" >/dev/null 2>&1 && pwd )"

CONFIG_DIR=~/.config/Code/User
mkdir -p "${CONFIG_DIR}"
for filename in settings.json keybindings.json snippets
do
	ln -s "${SCRIPT_DIR}/${filename}" "${CONFIG_DIR}/${filename}" 
done
