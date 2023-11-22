#!/bin/sh

if ! command -v pkexec >/dev/null; then
	notify-send -i nemo "Nemo" "This action requires pkexec to be installed"
    exit 1
fi

if ! command -v xdg-open >/dev/null; then
	notify-send -i nemo "Nemo" "This action requires xdg-open to be installed"
    exit 1
fi

pkexec env DISPLAY="${DISPLAY}" XAUTHORITY="${XAUTHORITY}" xdg-open "$1"

exit 0