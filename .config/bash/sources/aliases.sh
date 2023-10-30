# ------------------------- #
#  Aliases                  #
# ------------------------- #


# ---- Standard Aliases --- #

# Replace cat with bat
if command -v bat >/dev/null; then
	alias cat='bat --color=auto --style=plain --paging=never'
fi

# Run dash and node with readline
if command -v rlwrap >/dev/null; then
	alias dash='rlwrap dash'
	alias node='env NODE_NO_READLINE=1 rlwrap node'
fi

if command -v exa >/dev/null; then
	# Replace ls with exa and set default options for exa command
	alias ls='exa --color=auto --group --group-directories-first --time-style=long-iso'
	alias l='ls -al'
else
	# Set default options for ls command
	alias ls='ls --color=auto --group --group-directories-first --time-style=long-iso --human-readable'
	alias l='ls -Al'
fi


alias c='cat'

# Directory listing commands
alias lv='ls -l'                                                    	# List non-hidden items with extended metadata
alias lh='ls -ld .*'                                                	# List hidden items with extended metadata
alias ld='ls -ld *(-/DN)'                                           	# List directories with extended metadata

# Directory navigation
alias ..='cd ..'                                                	    # Navigate to parent directory
alias ...='cd ../..'                                            	    # Navigate to parent directory of parent directory
alias cd-="cd \${OLDPWD}"                                        	    # Navigate to previous directory (last directory in dirstack)

alias sudo='sudo '														# Enable the use of aliases with sudo by causing the next word to be checked for alias substitution

# Utilities
alias cl='clear'                                                    	# Clear the terminal
alias re='reset'                                                    	# Reset the terminal
alias rm='rm -rv'				                                  		# Remove files/folders
alias mv='mv -v'
alias cp='cp -rv'
alias mkdir='mkdir -p'                                              	# Create directory as well as parent directories, if necessary
alias md='mkdir -p'
alias rd='rmdir'

# Edit text files
alias e='${EDITOR}'                                             		# Open default text editor
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
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
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

alias dot='/usr/bin/git --git-dir=${DOTFILES_DIR:-$HOME/dotfiles}/ --work-tree=$HOME'	#
alias now='date "+%A, %B %d, %l:%M %p %Z" | tr -s " "'

alias doc='cd $(xdg-user-dir DOCUMENTS)'								#
alias dow='cd $(xdg-user-dir DOWNLOADS)'								#
alias img='cd $(xdg-user-dir PICTURES)'									#
alias mus='cd $(xdg-user-dir MUSIC)'									#
alias pro='cd $HOME/projects'											#
alias scr='cd ${SCRIPTS_DIR:-$HOME/scripts}'							#
alias tmp='cd $HOME/temp'												#
alias vid='cd $(xdg-user-dir VIDEOS)'									#

alias dotls='dot ls-files'

if command -v advcp >/dev/null; then
	alias cpg='advcp -g'
fi

if command -v advmv >/dev/null; then
	alias mvg='advmv -g'
fi

alias dl='yt-dlp --mp4'
alias blk='lsblk -f'

cd() {

	local dir

  	if [ $# -eq 0 ]; then
    	dir="${HOME}"
  	else
    	dir="$1"
  	fi

  	builtin pushd "${dir}" >/dev/null || exit 1

}

help() {
    if command builtin "$1" 2>/dev/null; then
        command help "$1"
    elif command man "$1" >/dev/null 2>&1; then
        command man "$1"
    else
        echo "$1 not found"
        echo "No manual entry for $1"
    fi
}