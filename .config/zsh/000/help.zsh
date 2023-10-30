#!/usr/bin/env zsh

# unalias run-help
# autoload run-help
# HELPDIR=/usr/share/zsh/"${ZSH_VERSION}"/help
# alias help=run-help

tt() {

	get_alias_origin() {
		whence "$1" | grep -oP '^(\w+\s?){1,2}' | sed -E 's/(^\s+|\s+$)//g'
	}

	get_type() {
		whence -w "$1" | awk '{print $NF}'
	}

	strip_whitespace() {
		sed -E 's/(^\s+|\s+$)//g' <<< "$1"
	}

	cmd=$(strip_whitespace "$1")

	if [[ "$cmd" = "sudo" ]]; then
		echo "sudo"
		return
	fi

	while [[ "$(get_type "$cmd")" = "alias" ]]; do
		cmd=$(get_alias_origin "$cmd")
		if [[ "$cmd" =~ sudo* ]]; then
			cmd=$(awk '{print $2}' <<< "$cmd") && break
		fi
	done

	if apropos -e "$cmd" &>/dev/null; then
		man "$cmd"
	elif "$cmd" --help &>/dev/null; then
		"$cmd" --help | bat --style=plain --language=help
	elif "$cmd" -h &>/dev/null; then
		"$cmd" -h | bat --style=plain --language=help
	fi

}
