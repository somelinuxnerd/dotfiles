# ------------------------------------------
#  Startup File - sources/keybindings.zsh
# ------------------------------------------

#			Sequence	Command									Keys					Type
bindkey		'^[[H'		beginning-of-line						# Home					pts
bindkey		'^[[1~'		beginning-of-line						# Home					tty
bindkey		'^[[F'		end-of-line								# End					pts
bindkey		'^[[4~'		end-of-line								# End					tty
bindkey		'^[[2~'		overwrite-mode							# Insert				pts
bindkey		'^[[3~'		delete-char								# Delete				pts
bindkey		'^[[1;5D'	backward-word							# Control-Left			pts
bindkey		'^[[1;5C'	forward-word							# Control-Right			pts
bindkey		'^[[1;2D'	backward-kill-word						# Shift-Left			pts
bindkey		'^[[1;2C'	kill-word								# Shift-Right			pts
bindkey		'^Z'		undo									# Control-Z				pts
bindkey		'^Y'		redo									# Control-Y				pts

if (( $+widgets[history-substring-search-up] )); then
	bindkey		'^[[A'		history-substring-search-up			# Up					pts
	bindkey		'^[[B'		history-substring-search-down		# Down					pts
fi

if [[ -n "${DISPLAY}" ]] && command -v xclip >/dev/null; then
	cut-to-clipboard() {
		zle kill-buffer
		print -rn -- $CUTBUFFER | xclip -selection clipboard -in
	}
	zle -N cut-to-clipboard
	bindkey	"^H"	cut-to-clipboard							# Control-Backspace		pts
else
	bindkey	"^H"	kill-buffer									# Control-Backspace		pts
fi

if	[[ -f /usr/share/fzf/key-bindings.zsh ]];	then
	source /usr/share/fzf/key-bindings.zsh
fi
