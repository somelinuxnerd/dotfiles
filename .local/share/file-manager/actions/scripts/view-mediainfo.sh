#!/bin/bash
# shellcheck shell=bash disable=SC2312
# Requires xwininfo, gxmessage and mediainfo

if [[ "$#" -eq 0 ]]; then
	exit 1
elif ! command -v xwininfo >/dev/null; then
    exit 1
elif ! command -v gxmessage >/dev/null; then
    exit 1
elif ! command -v mediainfo >/dev/null; then
    exit 1
fi

PERCENT_OF_WIDTH=80
PERCENT_OF_HEIGHT=80

screen_info="$(xwininfo -root | sed -n -e "s/^ \+Width: \+\([0-9]\+\).*/\1/p" -e "s/^ \+Height: \+\([0-9]\+\).*/\1/p" | sed ':a;N;$!ba;s/\n/ /g')"

read -r screen_width screen_height <<< "${screen_info}"

window_width=$(bc <<< "scale=2; ${screen_width} * (${PERCENT_OF_WIDTH} / 100)" | cut -d. -f1)
window_height=$(bc <<< "scale=2; ${screen_height} * (${PERCENT_OF_HEIGHT} / 100)" | cut -d. -f1)

gxmessage \
	-ontop \
	-center \
	-geometry "${window_width}x${window_height}" \
	-buttons "Close":1 \
	-default "Close" \
	-font "monospace 13" \
	-fg "#FFFFFF" \
	-bg "#1b1b1c" \
	-title "$(basename "${1}")" "$(mediainfo "$@")"

exit 0