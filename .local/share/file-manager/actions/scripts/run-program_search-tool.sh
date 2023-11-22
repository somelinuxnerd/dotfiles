#!/bin/sh

if ! command -v baobab >/dev/null; then
	notify-send -i nemo "Nemo" "This action requires catfish to be installed"
    exit 1
fi

if [ -f "$1" ]; then
	catfish -- "$(dirname "$1")"
elif [ -d "$1" ]; then
	catfish -- "$1"
else
	exit 1
fi

exit 0