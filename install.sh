#!/usr/bin/env bash
# Create symlinks for dotfiles

SCRIPT_DIR="$( cd -P "$( dirname "$(readlink -f "${BASH_SOURCE[0]}")" )" >/dev/null 2>&1 && pwd )"
for f in ${SCRIPT_DIR}/*/install.sh
do
	config_dir=$(basename $(dirname "$f"))
	echo "Setting up ${config_dir} configs"
	"${f}"
    # if [[ -f ${f} ]]
    # then
    #     name="$(basename ${f})"
    #     dest=~/${name}
    #     ln -s "${f}" "${dest}" && echo >&2 -e "Created ${dest}"
    # fi
done
