# ------------------------------------------ #
#  Startup File: .zshenv                     #
# ------------------------------------------ #

skip_global_compinit=1


# -- XDG Base Directories ------------------ #

export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state


# -- Path Variables ------------------------ #

typeset -U path

path=(
	$HOME/.local/scripts/bin(N)
	$HOME/.local/bin(N)
	$XDG_DATA_HOME/npm/bin(N)
	$GOPATH/bin(N)
	$path[@]
)

export path


# -- Command Line Utilities ---------------- #

if (( $+commands[alacritty] )); then
	export TERMINAL=alacritty
elif (( $+commands[kitty] )); then
	export TERMINAL=kitty
fi

export BROWSER=xdg-open

for cmd in nvim vim vi nano; do
	if (( $+commands[$cmd] )); then
		export VISUAL=$cmd EDITOR=$cmd
		break
	fi
done

if (( $+commands[nvim] )); then
	export MANPAGER="nvim +Man!"														# Use neovim for MANPAGER
elif (( $+commands[vim] )); then
	export MANPAGER="col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -"		# Use vim for MANPAGER
elif (( $+commands[bat] )); then
	export MANPAGER="sh -c 'col -bx | bat -l man -p'" MANROFFOPT="-c"					# Use bat for MANPAGER
elif (( $+commands[less] )); then
	export MANPAGER="less -R --use-color -Dd+g -Du+b" MANROFFOPT="-c"					# Use less for MANPAGER
fi

if (( $+commands[less] )); then
	export PAGER=less																	# Use less for PAGER
	export LESS='-iFRX --use-color -Dd+g$Du+b$'											# less default options
	export LESSHISTFILE="${XDG_STATE_HOME}"/less_history								# less history file
	export LESSKEYIN="${XDG_CONFIG_HOME}"/less/lesskey									# less keybindings file
fi

# directory listing colors
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=00:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.7z=01;31:*.ace=01;31:*.alz=01;31:*.apk=01;31:*.arc=01;31:*.arj=01;31:*.bz=01;31:*.bz2=01;31:*.cab=01;31:*.cpio=01;31:*.crate=01;31:*.deb=01;31:*.drpm=01;31:*.dwm=01;31:*.dz=01;31:*.ear=01;31:*.egg=01;31:*.esd=01;31:*.gz=01;31:*.jar=01;31:*.lha=01;31:*.lrz=01;31:*.lz=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.lzo=01;31:*.pyz=01;31:*.rar=01;31:*.rpm=01;31:*.rz=01;31:*.sar=01;31:*.swm=01;31:*.t7z=01;31:*.tar=01;31:*.taz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tgz=01;31:*.tlz=01;31:*.txz=01;31:*.tz=01;31:*.tzo=01;31:*.tzst=01;31:*.udeb=01;31:*.war=01;31:*.whl=01;31:*.wim=01;31:*.xz=01;31:*.z=01;31:*.zip=01;31:*.zoo=01;31:*.zst=01;31:*.avif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*~=00;90:*#=00;90:*.bak=00;90:*.crdownload=00;90:*.dpkg-dist=00;90:*.dpkg-new=00;90:*.dpkg-old=00;90:*.dpkg-tmp=00;90:*.old=00;90:*.orig=00;90:*.part=00;90:*.rej=00;90:*.rpmnew=00;90:*.rpmorig=00;90:*.rpmsave=00;90:*.swp=00;90:*.tmp=00;90:*.ucf-dist=00;90:*.ucf-new=00;90:*.ucf-old=00;90:'


# -- GTK & Qt ------------------------------ #

# GTK v1 config file
export GTK_RC_FILES="${XDG_CONFIG_HOME}"/gtk-1.0/gtkrc

# GTK v2 config file
export GTK2_RC_FILES="${XDG_CONFIG_HOME}"/gtk-2.0/gtkrc:"${XDG_CONFIG_HOME}"/gtk-2.0/gtkrc.mine

if (( $+commands[qt6ct] )); then
	export QT_QPA_PLATFORMTHEME=qt6ct
elif (( $+commands[qt5ct] )); then
	export QT_QPA_PLATFORMTHEME=qt5ct
fi


#  Miscellaneous --------------------------- #

export GNUPGHOME="${XDG_DATA_HOME}"/gnupg										# gnupg directory
export ENV="${XDG_CONFIG_HOME}"/dash/dashrc										# dash config file
export INPUTRC="${XDG_CONFIG_HOME}"/readline/inputrc							# readline config file
export RLWRAP_HOME="${XDG_CACHE_HOME}"/rlwrap									# rlwrap (readline wrapper) home directory
export WGETRC="${XDG_CONFIG_HOME}"/wget/wgetrc									# wget config file
export _ZO_EXCLUDE_DIRS="${HOME}"/temp/*										# zoxide excluded directories
export TIMEFMT=$'\nreal\t%*Es\nuser\t%*Us\nsys\t%*Ss'							# zsh time builtin format
# export MPC_FORMAT='\n[[ Title: %title%][\nArtist: %artist%][\n Album: %album%][\n Track: %track%]|[File: %file%]]\n'		# mpc status format
export VSCODE_PORTABLE="${XDG_CONFIG_HOME}"/vscode								# vscode data directory
export HTOPRC="${XDG_CONFIG_HOME}"/htop/htoprc
# export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}"/ripgrep/config				# ripgrep config file
# export KODI_DATA="${XDG_DATA_HOME}"/kodi										# kodi data directory
# export DVDCSS_CACHE="${XDG_DATA_HOME}"/dvdcss									# libdvdcss cache directory
# export DISCORD_USER_DATA_DIR="${XDG_DATA_HOME}"								# discord data directory
export ANDROID_USER_HOME="$XDG_DATA_HOME"/android


#  -- Development -------------------------- #

export NODE_REPL_HISTORY="${XDG_CACHE_HOME}"/node_history						# node repl history file
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}"/npm/npmrc						# npm config file
export PYTHONSTARTUP="${XDG_CONFIG_HOME}"/python/pythonrc						# python interactive mode startup file
# export NVM_DIR="${XDG_DATA_HOME}"/nvm
# export GOPATH="${XDG_DATA_HOME}"/go
# export GOBIN="${HOME}"/.local/bin
# export MYPY_CACHE_DIR="${XDG_CACHE_HOME}"/mypy								# mypy cache directory
# export PYLINTHOME="${XDG_CACHE_HOME}"/pylint									# pylint cache directory
# export CONDARC="${XDG_CONFIG_HOME}"/conda/condarc								# anaconda config file
# export IPYTHONDIR="${XDG_CONFIG_HOME}"/ipython								# ipython config directory
export CARGO_HOME="${XDG_DATA_HOME}"/cargo									# cargo (rust package manager)
# export SQLITE_HISTORY="${XDG_DATA_HOME}"/sqlite_history						# sqlite


# -- Dotfiles Repository ------------------- #

export DOTFILES_DIR="${XDG_DATA_HOME}"/dotfiles
export DOTFILES_REMOTE="https://github.com/somelinuxnerd/dotfiles.git"


# -- Merge .zshrc Modules ------------------- #

if [[ ! -r $ZDOTDIR/.zshrc ]]; then
	# Get all lines from all files in $ZDOTDIR/zshrc.d that are not blank
	# lines or comments, remove any leading or trailing spaces from all
	# lines and save the output to $ZDOTDIR/.zshrc.
	command grep -E --no-filename --invert-match --regexp='^$' --regexp='^\s*#' "$ZDOTDIR"/zshrc.d/*(.N) | sed 's/^[ \t]*//; s/[ \t]*#.*//; s/[ \t]*$//' > $ZDOTDIR/.zshrc
fi
