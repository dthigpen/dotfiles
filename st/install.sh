#!/usr/bin/env bash
SCRIPT_DIR="$( cd -P "$( dirname "$(readlink -f "${BASH_SOURCE[0]}")" )" >/dev/null 2>&1 && pwd )"

CONFIG_DIR=~/programs/st-0.9.3
mkdir -p "${CONFIG_DIR}"
ln -s "${SCRIPT_DIR}/config.h" "${CONFIG_DIR}/config.h"
ln -s "${SCRIPT_DIR}/patches" "${CONFIG_DIR}/patches"
