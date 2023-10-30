# ------------------------------------------
#  Startup File - sources/history.zsh
# ------------------------------------------

# Command History
setopt EXTENDED_HISTORY                     # Save each command's beginning timestamp (in seconds since the epoch) and the duration (in seconds) to the history file. The format of this prefixed data is: ': <beginning time>:<elapsed seconds>;<command>'.
setopt NO_HIST_BEEP                         # Beep in ZLE when a widget attempts to access a history entry which isn't there.
setopt HIST_EXPIRE_DUPS_FIRST               # If the internal history needs to be trimmed to add the current command line, setting this option will cause the oldest history event that has a duplicate to be lost before losing a unique event from the list. You should be sure to set the value of HISTSIZE to a larger number than SAVEHIST in order to give you some room for the duplicated events, otherwise this option will behave just like HIST_IGNORE_ALL_DUPS once the history fills up with unique events.
setopt HIST_FIND_NO_DUPS                    # When searching for history entries in the line editor, do not display duplicates of a line previously found, even if the duplicates are not contiguous.
setopt HIST_IGNORE_ALL_DUPS                 # If a new command line being added to the history list duplicates an older one, the older command is removed from the list (even if it is not the previous event).
setopt HIST_IGNORE_SPACE                    # Remove command lines from the history list when the first character on the line is a space, or when one of the expanded aliases contains a leading space. Only normal aliases (not global or suffix aliases) have this behaviour. Note that the command lingers in the internal history until the next command is entered before it vanishes, allowing you to briefly reuse or edit the line. If you want to make it vanish right away without entering another command, type a space and press return.
setopt HIST_NO_STORE                        # Remove the history (fc -l) command from the history list when invoked. Note that the command lingers in the internal history until the next command is entered before it vanishes, allowing you to briefly reuse or edit the line.
setopt HIST_REDUCE_BLANKS                   # Remove superfluous blanks from each command line being added to the history list.
setopt HIST_SAVE_NO_DUPS                    # When writing out the history file, older commands that duplicate newer ones are omitted.
setopt INC_APPEND_HISTORY                   # This option works like APPEND_HISTORY except that new history lines are added to the $HISTFILE incrementally (as soon as they are entered), rather than waiting until the shell exits. The file will still be periodically re-written to trim it when the number of lines grows 20% beyond the value specified by $SAVEHIST (see also the HIST_SAVE_BY_COPY option).
setopt SHARE_HISTORY                        # This option both imports new commands from the history file, and also causes your typed commands to be appended to the history file (the latter is like specifying INC_APPEND_HISTORY, which should be turned off if this option is in effect). The history lines are also output with timestamps ala EXTENDED_HISTORY (which makes it easier to find the spot where we left off reading the file after it gets re-written). By default, history movement commands visit the imported lines as well as the local lines, but you can toggle this on and off with the set-local-history zle binding. It is also possible to create a zle widget that will make some commands ignore imported commands, and some include them. If you find that you want more control over when commands get imported, you may wish to turn SHARE_HISTORY off, INC_APPEND_HISTORY or INC_APPEND_HISTORY_TIME (see above) on, and then manually import commands whenever you need them using 'fc -RI'.

# The number of commands loaded into memory from the history file
HISTSIZE=10000

# The number of commands stored in the history file
SAVEHIST=10000

# Path of the history file
HISTFILE="${XDG_STATE_HOME}/zsh/history"

HISTORY_IGNORE="(:r|:rl|:s|:q|l|cl|re|clear|reset|ls|cd|pwd|exit|cd ..)"
