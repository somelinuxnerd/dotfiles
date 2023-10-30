# ------------------------------------------
#  Startup File - sources/zle.zsh
# ------------------------------------------


# ------------------------------------------ #
#  Escape Pasted URLs                        #
# ------------------------------------------ #

autoload -U url-quote-magic bracketed-paste-magic

zle -N self-insert url-quote-magic
zle -N bracketed-paste bracketed-paste-magic

pasteinit() {
    OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
    zle -N self-insert url-quote-magic
}

pastefinish() {
    zle -N self-insert $OLD_SELF_INSERT
}

zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# Make sure zsh-autosuggestions does not interfere with it
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste)


# ------------------------------------------ #
#  ZLE Functions                             #
# ------------------------------------------ #

# insert-sudo-accept-line() {

# 	if [[ "${BUFFER:0:5}" = "sudo " ]]; then
# 		return
# 	fi

# 	s=$(( CURSOR + 5 ))

# 	BUFFER="sudo $BUFFER"

# 	CURSOR=$s

# 	zle accept-line

# }
# zle -N insert-sudo-accept-line

# quote-current-word() {

# 	echo "${BUFFER:0:5}"

# 	return

# 	# If the character before the cursor is not a space jump to the beginning of the current word
# 	# Checking for a space specifically before the cursor will prevent the backword-word widget from stopping on special characters like colons
# 	while [[ $BUFFER[$(( CURSOR ))] != " " ]]; do
# 		zle backward-word
# 	done

# 	# If the cursor is on the first word then return without quoting
# 	if [[ $CURSOR -eq 0 ]]; then
# 		return
# 	fi

# 	# Add the left side quote to the buffer
# 	RBUFFER="\"$RBUFFER"

# 	# Move forward a word until the character after the cursor is a space or the cursor is at the end of the line
# 	# This will prevent the forward-word widget from stopping on special characters like colons
# 	while [[ $BUFFER[$(( CURSOR + 1 ))] != " " ]] && [[ $BUFFER[$(( CURSOR + 1 ))] != "" ]]; do
# 		zle forward-word
# 	done

# 	# Add the right side quote to the buffer
# 	RBUFFER="\"$RBUFFER"

# }
# zle -N quote-current-word

# paste-from-clipboard() {
# 	zle kill-whole-line
# 	killring=("$CUTBUFFER" "${(@)killring[1,-2]}")
# 	CUTBUFFER=$(xclip -selection clipboard -out)
# 	zle yank
# }
# zle -N paste-from-clipboard
