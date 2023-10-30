# ------------------------------------------
#  Startup File - .zshrc
# ------------------------------------------
echo .zshrc

# zmodload zsh/zprof

# Create the zsh cache, data or state directories if any of them do not exist
mkdir -p "${XDG_CACHE_HOME}/zsh" "${XDG_DATA_HOME}/zsh" "${XDG_STATE_HOME}/zsh" &!

autoload -Uz add-zsh-hook term_title

add-zsh-hook precmd term_title

() {

	local RCDIR="${ZDOTDIR}"/sources

	source "${RCDIR}"/options.zsh
	source "${RCDIR}"/history.zsh
	source "${RCDIR}"/prompt.zsh
	source "${RCDIR}"/completions.zsh
	source "${RCDIR}"/plugins.zsh
	source "${RCDIR}"/zle.zsh
	source "${RCDIR}"/keybindings.zsh
	source "${RCDIR}"/aliases.zsh

	local ZCOMPDUMP="${XDG_CACHE_HOME}"/zsh/zcompdump-"${ZSH_VERSION}"

	autoload -Uz compinit

	for _ in "${ZCOMPDUMP}"(N.mh+24); do
		compinit -d "${ZCOMPDUMP}"
	done

	compinit -C -d "${ZCOMPDUMP}"

}

# zprof