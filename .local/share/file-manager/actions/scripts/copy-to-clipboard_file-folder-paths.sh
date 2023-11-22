#!/usr/bin/env bash

if ! command -v xclip >/dev/null; then
	notify-send -i nemo "Nemo" "This action requires xclip to be installed"
    exit 1
fi

for arg in "$@"; do
    printf '%s\n' "${arg}"
done | xclip -selection clipboard

exit 0