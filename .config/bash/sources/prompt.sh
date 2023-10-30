# shellcheck shell=bash disable=SC1083

__prompt_command() {

	local RETVAL=$?

	local -A COLOR=(
		[1]='\[\e[0;31m\]'
		[2]='\[\e[0;32m\]'
		[3]='\[\e[0;33m\]'
		[5]='\[\e[0;35m\]'
		[6]='\[\e[0;36m\]'
		[9]='\[\e[1;31m\]'
		[98]='\[\e[38;5;98m\]'
		[219]='\[\e[38;5;219m\]'
		[240]='\[\e[38;5;240m\]'
		[reset]='\[\e[0m\]'
	)

	git_info() {

		if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
			return
		fi

		local _location _ahead _behind _merging _untracked _modified _staged
		local -a _divergences _flags
		local _num_ahead _num_behind _git_dir

		_location=$(git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD)
		_location=$(sed 's|refs/heads/||; s|tags/||' <<< "${_location}")

		_ahead="${COLOR[1]}⇡NUM${COLOR[reset]}"
		_behind="${COLOR[6]}⇣NUM${COLOR[reset]}"
		_merging="${COLOR[5]}⚡︎${COLOR[reset]}"
		_untracked="${COLOR[1]}●${COLOR[reset]}"
		_modified="${COLOR[3]}●${COLOR[reset]}"
		_staged="${COLOR[2]}●${COLOR[reset]}"

		_num_ahead="$(git log --oneline @{u}.. 2>/dev/null | wc -l | tr -d ' ')"
		if [ "${_num_ahead}" -gt 0 ]; then
			_divergences+=( "${_ahead//NUM/${_num_ahead}}" )
		fi

		_num_behind=$(git log --oneline ..@{u} 2>/dev/null | wc -l | tr -d ' ')
		if [ "${_num_behind}" -gt 0 ]; then
			_divergences+=( "${_behind//NUM/${_num_behind}}" )
		fi

		_git_dir="$(git rev-parse --git-dir 2>/dev/null)"
		if [ -n "${_git_dir}" ] && [ -r "${_git_dir}/MERGE_HEAD" ]; then
			_flags+=( "${_merging}" )
		fi

		if [ -n "$(git ls-files --other --exclude-standard 2>/dev/null)" ]; then
			_flags+=( "${_untracked}" )
		fi

		if ! git diff --quiet 2>/dev/null; then
			_flags+=( "${_modified}" )
		fi

		if ! git diff --cached --quiet 2>/dev/null; then
			_flags+=( "${_staged}" )
		fi

		printf '%s' "${COLOR[98]}"
		printf " "
		printf '%s' "${COLOR[219]}"
		printf ' %s' "${_location}"

		if [ ${#_divergences[@]} -ne 0 ]; then
			printf ' %s' "$(printf %s "${_divergences[@]}" $'\n')"
		fi

		if [ "${#_flags[@]}" -ne 0 ]; then
			printf ' %s' "$(printf %s "${_flags[@]}" $'\n')"
		fi

		printf '%s' "${COLOR[reset]}"

	}

	PS1="${COLOR[240]}[${COLOR[6]}\w${COLOR[240]}]"

	PS1+=$(git_info)

	if (( RETVAL > 0 )); then
		PS1+=" ${COLOR[1]}[$RETVAL]"
	fi

	if (( EUID == 0 )); then
		PS1+=" ${COLOR[9]}#"
	else
		PS1+=" ${COLOR[2]}$"
	fi

	PS1+="${COLOR[reset]} "

}

export PROMPT_COMMAND=__prompt_command