#!/usr/bin/env bash
SCRIPT_DIR="$( cd -P "$( dirname "$(readlink -f "${BASH_SOURCE[0]}")" )" >/dev/null 2>&1 && pwd )"

CONFIG_DIR=~/.termux/
mkdir -p "${CONFIG_DIR}"
for filename in termux.properties
do
	ln -s "${SCRIPT_DIR}/${filename}" "${CONFIG_DIR}/${filename}" 
done
