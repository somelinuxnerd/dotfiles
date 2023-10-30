# ------------------------------------------
#  Startup File - sources/options.zsh
# ------------------------------------------

setopt AUTO_CD							# Perform a cd command into a directory without typing cd
setopt GLOB_DOTS						# Globbing will match a leading . in a filename
setopt INTERACTIVE_COMMENTS				# Allow comments even in interactive shells
setopt RM_STAR_SILENT					# Do not query the user before executing 'rm *' or 'rm path/*'.
setopt NO_FLOW_CONTROL					# Disable flow control via control-s and control-q
setopt NO_HUP							# Don't kill background jobs when the shell exits
setopt NO_BEEP							# Don't beep on ZLE errors
setopt PUSHD_SILENT						# Don't print the directory stack after pushd or popd
setopt PUSHD_TO_HOME					# Have pushd with no arguments act like 'pushd $HOME'.


# setopt AUTO_PUSHD
# setopt CDABLE_VARS					# If the argument to a cd command (or an implied cd with the AUTO_CD option set) is not a directory, and does not begin with a slash, try to expand the expression as if it were preceded by a '~' (see Filename Expansion).
# setopt PUSHD_IGNORE_DUPS				# Don't push multiple copies of the same directory onto the directory stack.
# setopt PUSHD_MINUS					# Exchanges the meanings of '+' and '-' when used with a number to specify a directory in the stack,
# setopt ALWAYS_TO_END					# If a completion is performed with the cursor within a word, and a full completion is inserted, the cursor is moved to the end of the word. That is, the cursor is moved to the end of the word if either a single match is inserted or menu completion is performed.
# setopt NO_NOMATCH						# If a pattern for filename generation has no matches, print an error, instead of leaving it unchanged in the argument list. This also applies to file expansion of an initial '~' or '='.
