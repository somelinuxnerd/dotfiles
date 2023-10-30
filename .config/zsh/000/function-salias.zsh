#!/usr/bin/env zsh
# shellcheck disable=all

# creates an alias and precedes the command with
# sudo if $EUID is not zero.

emulate -L zsh

local multi=0
local key
local val

while getopts ":ah" opt; do
    case $opt in
        a) multi=1 ;;
        h)
            printf 'usage: salias [-ah] <alias-expression>\n\n'
            printf '  -a      replace '\'' ; '\'' sequences with '\'' ; sudo '\''.\n'
            printf '  -h      show this help message.\n'
            return 0
            ;;
        *)
			salias -h >&2
			;;
    esac
done

shift "$((OPTIND-1))"

if (( ${#argv} > 1 )) ; then
    printf 'Too many arguments %s\n' "${#argv}"
    return 1
fi

key="${1%%\=*}" ;  val="${1#*\=}"

if (( EUID == 0 )); then
    alias -- "${key}=${val}"
else
    (( multi > 0 )) && val="${val// ; / ; sudo }"
    alias -- "${key}=sudo ${val}"
fi