#!/usr/bin/env bash
# Create symlinks for dotfiles

# Get script dir (https://stackoverflow.com/questions/59895/how-do-i-get-the-directory-where-a-bash-script-is-located-from-within-the-script)
SOURCE=${BASH_SOURCE[0]}
while [ -L "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
  SOURCE=$(readlink "$SOURCE")
  [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

for f in ${DIR}/*/.*
do
    if [[ -f ${f} ]]
    then
        name="$(basename ${f})"
        dest=~/${name}
        ln -s "${f}" "${dest}" && echo >&2 -e "Created ${dest}"
    fi
done