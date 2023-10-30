# ------------------------------------------
#  Startup File - sources/aliases.zsh
# ------------------------------------------


# ---- Shell Fumctions --- #

open() {
	xdg-open "${1:-$PWD}" &>/dev/null
}

# Create a new directory and cd into it
mkcd() {
	mkdir -p -- "$1"
	cd -P -- "$1" || return 1
}

# Take ownership of files and/or folders
own() {
	if ! chown "$UID":"$GID" "$@" &>/dev/null; then
		sudo chown "$UID":"$GID" "$@"
	fi
}

node() {
	if command -v rlwrap node >/dev/null; then
		env NODE_NO_READLINE=1 rlwrap node "$@"
	else
		node "$@"
	fi
}

dash() {
	if command -v rlwrap dash >/dev/null; then
		rlwrap dash "$@"
	else
		dash "$@"
	fi
}


# ---- Global Aliases ----- #

{

	alias -g P='| ${PAGER:-less}'

	alias -g H='| head'
	alias -g T='| tail'

	alias -g S='| sort --numeric-sort'
	alias -g U='| uniq'
	alias -g Su='| sort --numeric-sort --unique'

	alias -g G='| grep --color=auto'
	alias -g Gi='| grep --ignore-case --color=auto'
	alias -g Gv='| grep --invert-match --color=auto'
	alias -g Giv='| grep --ignore-case --invert-match --color=auto'

	alias -g C='| xclip -selection clipboard -in'

	alias -g WC='| wc --chars'
	alias -g LC='| wc --lines'

	alias -g DN='>/dev/null'

	alias -g HH='--help 2>&1 | bat --plain --language=help'
	alias -g Hg='--help | grep -i'
	alias -g Ha='--help-all 2>&1 | bat --plain --language=help'
	alias -g Hag='--help-all | grep -i'

	alias -g Ca='--color=always'

}


# ---- Standard Aliases --- #

{

	alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
	alias diff='diff --color=auto'
	alias ip='ip -color=auto'

	# Replace cat with bat
	if command -v bat >/dev/null; then
		alias cat='bat --color=auto --style=plain --paging=never'
	fi

	alias c='cat'

	if command -v exa >/dev/null; then
		# Replace ls with exa and set default options for exa command
		alias ls='exa --color=auto --group --group-directories-first --time-style=long-iso'
		alias l='ls -al'
	else
		# Set default options for ls command
		alias ls='ls --color=auto --group --group-directories-first --time-style=long-iso --human-readable'
		alias l='ls -Al'
	fi

	# Directory listing commands
	alias lv='ls -l'                                                    	# List non-hidden items with extended metadata
	alias lh='ls -ld .*'                                                	# List hidden items with extended metadata
	alias ld='ls -ld *(-/DN)'                                           	# List directories with extended metadata

	# Directory navigation
	alias ..='cd ..'                                                	    # Navigate to parent directory
	alias ...='cd ../..'                                            	    # Navigate to parent directory of parent directory
	#alias cd-="popd"                                        	    # Navigate to previous directory (last directory in dirstack)
	alias d='dirs -v'
	alias 1='cd -1'
	alias 2='cd -2'
	alias 3='cd -3'
	alias 4='cd -4'
	alias 5='cd -6'
	alias 6='cd -6'
	alias 7='cd -7'
	alias 8='cd -8'
	alias 9='cd -9'

	alias sudo='sudo '														# Enable the use of aliases with sudo by causing the next word to be checked for alias substitution
	alias s='sudo'

	# Utilities
	alias cl='clear'                                                    	# Clear the terminal
	alias re='reset'                                                    	# Reset the terminal
	alias cp='cp -rv'
	alias mv='mv -v'
	alias rm='rm -rv'				                                  		# Remove files/folders
	alias mkdir='mkdir -p'                                              	# Create directory as well as parent directories, if necessary

	alias se='sudoedit'														# Open default text editor with sudo privileges

	# Shell related commands
	alias :r='exec $(ps --no-headers -p $$ -o comm)'						# Replace the current shell instance with a new instance
	alias :rl='exec $(ps --no-headers -p $$ -o comm) --login'				# Replace the current shell instance with a new login shell instance
	alias :s='echo $(ps --no-headers -p $$ -o comm):$(echo ${SHLVL:=1})'	# Echo current shell name and level
	alias :q='exit'															# Exit the shell

	# File permissions and attributes
	alias chown='sudo chown'												# Run chown with sudo priviliges
	alias chmod='sudo chmod'												# Run chmod with sudo priviliges
	alias chattr='sudo chattr'												# Run chattr with sudo priviliges
	alias cx='sudo chmod +x'                                         	   	# Mark files/folders as executable
	alias ci='sudo chattr +i'                                         	   	# Mark files/folders as immutable

	# Systemd
	alias sc='sudo systemctl'                                           	# systemctl - system command
	alias scu='systemctl --user'                                        	# systemctl - user command
	alias unlock='sudo loginctl unlock-sessions'                            # loginctl - unlock sessions

	# Processes
	alias psg='ps -A uc | grep --ignore-case --color=auto'					# Show all processes matching pattern
	alias pg='pgrep --ignore-case'											# Find PIDs matching pattern
	alias pk='sudo pkill --ignore-case --echo'								# Kill all processes matching pattern
	alias ka='sudo killall --exact --ignore-case'							# Kill processes by name (exact matches and case insensitive)
	alias kill='sudo kill'													# Run kill with sudo priviliges
	alias pkill='sudo pkill'												# Run pkill with sudo priviliges
	alias killall='sudo killall'											# Run killall with sudo priviliges

	# htop
	alias shtop='sudo htop'
	alias htopc='htop --sort-key=PERCENT_CPU'                      			# Open htop (sort by cpu load)
	alias htopm='htop --sort-key=PERCENT_MEM'                      			# Open htop (sort by memory usage)
	alias htopi='htop --sort-key=IO_RATE'                          			# Open htop (sort by io rate)
	alias htopp='htop --sort-key=PRIORITY'									# Open htop (sorted by priority)
	alias htopn='htop --sort-key=NICE'										# Open htop (sorted by nice)

	# Pacman
	alias pacman='sudo pacman'												# Run pacman with sudo privileges
	alias pm='pacman'														# Run pacman
	alias pms='pacman -Ss'                                              	# Search for packages by keyword
	alias pmsf='pacman -F'                                              	# Search for packages containing file
	alias pmd='pacman -Si'                                              	# Show package information
	alias pmi='pacman -S --noconfirm'                            		  	# Install package(s) by name
	alias pmr='pacman -Rns --noconfirm'                          	 	 	# Remove one or more packages
	alias pmu='pacman -Syu --noconfirm'                           		 	# Upgrade installed packages
	alias pmro='pacman -Rns $(pacman -Qtdq)'                    	 	  	# Remove orphaned packages
	alias pmul='rm -f /var/lib/pacman/db.lck'                      			# Unlock pacman database
	alias pmsi='pacman -Qs'                                                 # List installed packages
	alias pmli='pacman -Q'                                              	# List installed packages
	alias pmle='pacman -Qe'                                             	# List explicitly installed packages
	alias pmlf='pacman -Qm'                                             	# List foreign packages
	alias pmlo='pacman -Qtdq'                                           	# List orphaned packages
	alias pmlu='pacman -Qu'                                             	# List upgradable packages
	alias pmcr='pacman -Scc'                                            	# Erase entire package cache
	alias pmcr1='paccache -rk 1'                                        	# Erase all but 1 most recent package versions in cache
	alias pmcv='du -sh /var/cache/pacman/pkg'                           	# View cache size and location
	alias pmcl='ls -1 /var/cache/pacman/pkg'                            	# List cached packages

	# Paru
	alias pa='paru'															# Run paru
	alias pas='paru -Ss'			                                       	# Search AUR packages
	alias pad='paru -Si'                                              		# Show AUR package information
	alias pai='paru -S --skipreview --noconfirm'                           	# Install one or more AUR packages
	alias pau='paru -Syua'                                              	# Upgrade AUR packages
	alias palu='paru -Qua'													# List upgradable AUR packages

	# ProtonVPN
	alias vpn='protonvpn-cli'                                           	# Run ProtonVPN CLI command
	alias vpnc='protonvpn-cli connect --fastest'                        	# Connect to ProtonVPN (fastest server)
	alias vpnd='protonvpn-cli disconnect'                               	# Disconnect from ProtonVPN
	alias vpns='protonvpn-cli status'                                   	# Show status of ProtonVPN connection

	# Reflector
	alias mirror="sudo reflector --fastest 30 --latest 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
	alias mirrorr="sudo reflector --latest 50 --number 20 --sort rate --save /etc/pacman.d/mirrorlist"
	alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
	alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
	alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

	alias ffmpeg='ffmpeg -hide_banner -loglevel warning -stats'            	# Run ffmpeg with flags to lessen unnecessary terminal output
	alias stow='stow --dir="${STOW_DIR}" --target="${HOME}"'           	    # Add source and target directory flags to stow command
	alias python="python -q"                                            	# Run python without showing messages on interactive startup
	alias watch="watch --color"                                         	# Add flag to watch command to interpret ANSI color codes
	alias dlp='yt-dlp'													    #
	alias dlpi='yt-dlp --ignore-config'                                    	#
	alias penv="printenv"													#
	alias cpulimit="cpulimit --lazy --include-children"						#
	alias ncmpcpp="ncmpcpp -q"												#
	alias ip="ip --color=auto"												#
	alias df="df --human-readable"											#
	alias du="du --human-readable"											#
	alias free="free --human"												#
	alias updatedb="sudo updatedb"											# Run updatedb with sudo
	alias renice="sudo renice"												#
	alias ionice="sudo ionice"												#
	alias systemd-run="sudo systemd-run"									#
	alias mount="sudo mount"												#
	alias umount="sudo umount"												#
	alias netstat="sudo netstat"											#
	alias ports='netstat -tulanp'											#
	alias top='top -i'														#
	alias gc='git clone'													#
	alias xclip='xclip -selection clipboard'								#

	# alias dot='/usr/bin/git --git-dir=${DOTFILES_DIR:-$HOME/dotfiles}/ --work-tree=$HOME'	#
	alias now='date "+%A, %B %d, %l:%M %p %Z" | tr -s " "'

	alias cac='pushd ${XDG_CACHE_HOME:-$HOME/.cache}'							# Go to cache directory
	alias con='pushd ${XDG_CONFIG_HOME:-$HOME/.config}'						# Go to config directory
	alias dat='pushd ${XDG_DATA_HOME:-$HOME/.local/share}'						# Go to data directory
	alias sta='pushd ${XDG_STATE_HOME:-$HOME/.local/state}'					# Go to state directory
	alias doc='pushd ${XDG_DOCUMENTS_DIR:-$(xdg-user-dir DOCUMENTS)}'		# Go to documents directory
	alias dow='pushd ${XDG_DOWNLOADS_DIR:-$(xdg-user-dir DOWNLOADS)}'		# Go to downloads directory
	alias img='pushd ${XDG_PICTURES_DIR:-$(xdg-user-dir PICTURES)}'		# Go to images directory
	alias mus='pushd ${XDG_MUSIC_DIR:-$(xdg-user-dir MUSIC)}'				# Go to music directory
	alias pro='pushd $HOME/projects'											# Go to projects directory
	alias rep='pushd $HOME/projects/repos'										# Go to projects/repos directory
	alias scr='pushd ${SCRIPTS_DIR:-$HOME/scripts}'							# Go to scripts directory
	alias tmp='pushd $HOME/temp'												# Go to temp directory
	alias vid='pushd ${XDG_VIDEOS_DIR:-$(xdg-user-dir VIDEOS)}'			# Go to videos directory

	alias gitls='git ls-files'
	alias dotls='dot ls-files'

	if command -v advcp >/dev/null; then
		alias cpg='advcp -g'
	fi

	if command -v advmv >/dev/null; then
		alias mvg='advmv -g'
	fi

	alias dlv='yt-dlp --mp4'
	alias dls='yt-dlp --mp4 --live'
	alias blk='lsblk -f'
	alias clc='clear && cat'

}


# --- XXXXX --- #

# Edit text files
e() {
	if [ -z "${VISUAL:-$EDITOR}" ]; then
		echo "${funcstack}: VISUAL or EDITOR environment variable is not defined" >&2
		return 1
	fi
	${VISUAL:-$EDITOR} "$@"
}

# Print the contents of the specified executable
catw() {

	local _arg _filepath _encoding

	if [ "$#" -eq 0 ]; then
		echo "No files specified" >&2
		return 1
	fi

	for _arg in "$@"; do

		_filepath=$(whereis "${_arg}" | awk '{print $2}')

		if [ -z "${_filepath}" ]; then
			echo "catw: '${_arg}': no such file or directory" >&2
			return 1
		fi

		_encoding=$(file --brief --mime-encoding "${_filepath}")

		if [ "${_encoding}" = "binary" ]; then
			echo "catw: '${_arg}': file is a binary" >&2
			return 1
		fi

	done

	for _arg in "$@"; do
		_filepath=$(whereis "${_arg}" | awk '{print $2}')
		cat "${_filepath}"
	done

}

help() {
    "$@" --help 2>&1 | bat --style=plain --language=help
}

# Search for packages by exact name
pmsn() {
	pacman -Ss ^"$1"$
}

# List items in PWD matching keyword(s)
lg() {

	if [ "$#" -eq 0 ]; then
		echo "${funcstack[1]}: no keyword specified"
		return 1
	elif [ "$#" -gt 2 ]; then
		echo "${funcstack[1]}: too many arguments"
		return 1
	fi

	local pattern=$1

	if [ "$#" -eq 2 ]; then
		dir=$2
	else
		dir=$PWD
	fi

	ls -al --color=always "${dir}" | grep --color=never "${pattern}"

}

yta() {

	if ! command -v ytarchive >/dev/null; then
		echo "${funcstack[1]}: ytarchive is not installed" >&2
		return 1
	fi

	ytarchive -o "${HOME}/downloads/videos/youtube.com __ %(channel)s __ %(upload_date)s __ %(title)s" "$1" best

}

archwiki() {
	if (( $# == 0 )) return 1
	xdg-open "https://wiki.archlinux.org/index.php?search=${1:-}&title=Special%3ASearch&wprov=acrw1_-1"
}
