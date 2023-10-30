# ---------------- #

txt_red=$(tput setaf 1)
txt_green=$(tput setaf 2)
txt_yellow=$(tput setaf 3)
txt_blue=$(tput setaf 4)
txt_magenta=$(tput setaf 5)
txt_cyan=$(tput setaf 6)
txt_grey=$(tput setaf 8 && tput dim)
txt_reset=$(tput sgr0)

working_dir() {

	local dir
	dir=$(dirs +0)

	printf '%s[%s%s%s%s%s]%s' "${txt_grey}" "${txt_reset}" "${txt_cyan}" "${dir}" "${txt_reset}" "${txt_grey}" "${txt_reset}"

}

git_info() {

	if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
		return
	fi

	local GIT_LOCATION=$(git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD)
	GIT_LOCATION=$(sed 's|refs/heads/||; s|tags/||' <<< "${GIT_LOCATION}")

	local AHEAD="${txt_red}⇡NUM${txt_reset}"
	local BEHIND="${txt_cyan}⇣NUM${txt_reset}"
	local MERGING="${txt_magenta}⚡︎${txt_reset}"
	local UNTRACKED="${txt_red}●${txt_reset}"
	local MODIFIED="${txt_yellow}●${txt_reset}"
	local STAGED="${txt_green}●${txt_reset}"

	local -a DIVERGENCES
	local -a FLAGS

	local NUM_AHEAD="$(git log --oneline @{u}.. 2>/dev/null | wc -l | tr -d ' ')"
	if [ "${NUM_AHEAD}" -gt 0 ]; then
		DIVERGENCES+=( "${AHEAD//NUM/${NUM_AHEAD}}" )
	fi

	local NUM_BEHIND=$(git log --oneline ..@{u} 2>/dev/null | wc -l | tr -d ' ')
	if [ "${NUM_BEHIND}" -gt 0 ]; then
		DIVERGENCES+=( "${BEHIND//NUM/${NUM_BEHIND}}" )
	fi

	local GIT_DIR="$(git rev-parse --git-dir 2>/dev/null)"
	if [ -n "${GIT_DIR}" ] && [ -r "${GIT_DIR}/MERGE_HEAD" ]; then
		FLAGS+=( "${MERGING}" )
	fi

	if [ -n "$(git ls-files --other --exclude-standard 2>/dev/null)" ]; then
		FLAGS+=( "${UNTRACKED}" )
	fi

	if ! git diff --quiet 2>/dev/null; then
		FLAGS+=( "${MODIFIED}" )
	fi

	if ! git diff --cached --quiet 2>/dev/null; then
		FLAGS+=( "${STAGED}" )
	fi

	local -a GIT_INFO
	GIT_INFO+=( "${txt_magenta}" )
	GIT_INFO+=( $'\UF841' )

	if [ -n "${GIT_STATUS}" ]; then
		GIT_INFO+=( "${GIT_STATUS}" )
	fi

	if [ ${#DIVERGENCES[@]} -ne 0 ]; then
		GIT_INFO+=( "$(printf %s "${DIVERGENCES[@]}" $'\n')" )
	fi

	if [ "${#FLAGS[@]}" -ne 0 ]; then
		GIT_INFO+=( "$(printf %s "${FLAGS[@]}" $'\n')" )
	fi

	GIT_INFO+=( "${txt_magenta}${GIT_LOCATION}${txt_reset}" )

	printf '%s' "${GIT_INFO[*]}${txt_reset}"

}

acct_code() {

	local code_color
	local code_char

	if [[ "${EXIT}" != 0 ]]; then
		code_color="${txt_blue}"
	else
		code_color="${txt_red}"
	fi

	if [[ "${UID}" -eq 0 ]]; then
		code_char="#"
	else
		code_char="$"
	fi

	printf ' %s%s%s' "${code_color}" "${code_char}" "${txt_reset}"

}

PS1='$(working_dir)$(git_info)$(acct_code) '