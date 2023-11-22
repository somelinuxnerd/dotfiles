#!/usr/bin/env bash

MUSIC_DIR="$(xdg-user-dir MUSIC)/library"

# mpc clear

rm ~/log

for file in "$@"; do
    file=$(echo "${file}" | sed -E "s|^${MUSIC_DIR}/||g")
    echo "${file}" >> ~/log
    mpc add "${file}"
done

# mpc play

# echo $(mpc playlist) > ~/log

exit 0