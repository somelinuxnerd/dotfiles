#!/bin/sh

if ! command -v baobab >/dev/null; then
	notify-send -i nemo "Nemo" "This action requires baobab to be installed"
    exit 1
fi

if [ -f "$1" ]; then
	baobab -- "$(dirname "$1")"
elif [ -d "$1" ]; then
	baobab -- "$1"
else
	exit 1
fi

exit 0