#!/usr/bin/env bash

MUSIC_DIR=$(xdg-user-dir MUSIC)

file_array=()

for file in "$@"; do
    file=$(echo "${file}" | sed -E "s|^${MUSIC_DIR}/||g")
    file_array+=("\"${file}\"")
done

mpc clear

eval "mpc add ${file_array[*]}"

mpc play

exit 0