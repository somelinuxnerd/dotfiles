# export PROMPT_COMMAND='history -a'
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE='ls:bg:fg:history:clear'
export HISTFILE="${XDG_STATE_HOME}"/bash/history			# Location of history file
export HISTSIZE=10000										# Number of commands stored in history cache
export HISTFILESIZE=$HISTSIZE								# Number of commands stored in history file
export HISTTIMEFORMAT="%F %T "
