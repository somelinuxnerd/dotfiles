#!/bin/sh

if ! command -v xclip >/dev/null; then
	notify-send -i nemo "Nemo" "This action requires xclip to be installed"
    exit 1
fi

xclip -selection clipboard < "$1"

exit 0