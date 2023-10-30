# --------------------------------------
#  Startup File: .zshenv
# --------------------------------------
echo .zshenv

skip_global_compinit=1

# XDG base directories
export XDG_CACHE_HOME="${HOME}"/.cache
export XDG_CONFIG_HOME="${HOME}"/.config
export XDG_DATA_HOME="${HOME}"/.local/share
export XDG_STATE_HOME="${HOME}"/.local/state

# xdg user directories
if [ -r "${XDG_CONFIG_HOME}"/user-dirs.dirs ]; then
	source "${XDG_CONFIG_HOME}"/user-dirs.dirs
fi

export GOPATH="${XDG_DATA_HOME}"/go										# go

# Path variables
typeset -U cdpath fpath path

cdpath=(
	"${HOME}"
)

fpath=(
	"${ZDOTDIR}/comps"(N)
	"${ZDOTDIR}/funcs"(N)
	"${fpath[@]}"
)

path=(
	"${HOME}/.local/bin"(N)
	"${XDG_DATA_HOME}/npm/bin"(N)
	"${GOPATH}/bin"(N)
	"${path[@]}"
)

# Inter-Client Exchange (ICE) Protocol
export ICEAUTHORITY="${XDG_CACHE_HOME}"/ICEauthority

# GnuPG directory
export GNUPGHOME="${XDG_DATA_HOME}"/gnupg

# X session error log file
export ERRFILE="${XDG_CACHE_HOME}"/X11/xsession-errors

# xinitrc file
export XINITRC="${XDG_CONFIG_HOME}"/X11/xinitrc

# xauthority credentials file (only set if none of these display managers are enabled)
if ! systemctl is-active gdm.service lightdm.service lxdm.service ly.service slim.service &>/dev/null; then
	export XAUTHORITY="${XDG_RUNTIME_DIR}"/Xauthority
fi

# readline config file
export INPUTRC="${XDG_CONFIG_HOME}"/readline/inputrc

# default text editor
export VISUAL=nvim
export EDITOR=nvim

# default terminal emulator
export TERMINAL=terminator

# default browser list
export BROWSER=librewolf:mercury-browser:firefox-esr:firefox:thorium-browser:brave:chromium

# pager
export PAGER=less

# manual pager
export MANPAGER='nvim +Man!'														# Use neovim for MANPAGER
# export MANPAGER="col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -"		# Use vim for MANPAGER
# export MANPAGER="sh -c 'col -bx | bat -l man -p'" MANROFFOPT="-c"					# Use bat for MANPAGER
# export MANPAGER="less -R --use-color -Dd+g -Du+b" MANROFFOPT="-c"					# Use less for MANPAGER

# less default options
export LESS='-iFRX --use-color -Dd+g$Du+b$'

# less history file
export LESSHISTFILE=-

# less keybindings file
export LESSKEYIN="${XDG_CONFIG_HOME}"/less/lesskey

# rlwrap (readline wrapper) config file
export RLWRAP_HOME="${XDG_STATE_HOME}"/rlwrap

# zoxide excluded directories
export _ZO_EXCLUDE_DIRS="${HOME}"/.dotfiles/*:"${HOME}"/downloads/*:"${HOME}"/temp/*

# vscode data directory
export VSCODE_PORTABLE="${XDG_CONFIG_HOME}"/vscode

# npm config file
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}"/npm/npmrc

# python interactive mode startup file
export PYTHONSTARTUP="${XDG_CONFIG_HOME}"/python/startup.py

# GTK 1 config file
export GTK_RC_FILES="${XDG_CONFIG_HOME}"/gtk-1.0/gtkrc

# GTK 2 config file
export GTK2_RC_FILES="${XDG_CONFIG_HOME}"/gtk-2.0/gtkrc

# sh config file
export ENV="${XDG_CONFIG_HOME}"/sh/shinit

# dotfiles directory
export DOTFILES_DIR="${XDG_DATA_HOME}"/dotfiles
export DOTFILES_REMOTE="https://github.com/somelinuxnerd/dotfiles.git"


# Qt
# if command -v qt6ct >/dev/null; then
#  	export QT_QPA_PLATFORMTHEME='qt6ct'
# elif command -v qt5ct >/dev/null; then
#  	export QT_QPA_PLATFORMTHEME='qt5ct'
# else
# 	export QT_QPA_PLATFORMTHEME='gtk2'
# fi

# Set the TZ environment variable based to the
# timezone symlinked to /etc/localtime
# TZ=$(realpath --relative-to /usr/share/zoneinfo /etc/localtime || timedatectl show --property=Timezone --value)
# export TZ

# export MAILER='evolution'

# zsh time command format
# export TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S\n'

# ps
# export PS_FORMAT="pid,ppid,pgrp,user,nice,pcpu,pmem,time,comm"

# wget config file
# export WGETRC="${XDG_CONFIG_HOME}"/wget/wgetrc

# kodi data directory
# export KODI_DATA="${XDG_DATA_HOME}"/kodi

# node history file
# export NODE_REPL_HISTORY="${XDG_DATA_HOME}"/node_repl_history

# mypy cache directory
# export MYPY_CACHE_DIR="${XDG_CACHE_HOME}"/mypy

# pylint cache directory
# export PYLINTHOME="${XDG_CACHE_HOME}"/pylint

# anaconda config file
# export CONDARC="${XDG_CONFIG_HOME}"/conda/condarc

# ipython config directory
# export IPYTHONDIR="${XDG_CONFIG_HOME}"/ipython

# ripgrep config file
# export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}"/ripgrep/config

# libdvdcss
# export DVDCSS_CACHE="${XDG_DATA_HOME}"/dvdcss

# discord
# export DISCORD_USER_DATA_DIR="${XDG_DATA_HOME}"

# mpd
#export MPD_HOST='192.168.1.69'
#export MPD_PORT='6600'
# export MPC_FORMAT='[%artist%[ - %album%][[ - %track%] - %title%]]|[File: %file%]'

# arch linux package builds
# export PKGBUILD_DIR="${HOME}"/temp/packages

# wttr.in script
# export WTTR_LOCATION="East Longmeadow"

#export GOBIN="${HOME}"/.local/bin											# go
# export CARGO_HOME="${XDG_DATA_HOME}"/cargo								# cargo (rust package manager)
# export SQLITE_HISTORY="${XDG_DATA_HOME}"/sqlite_history					# sqlite

# if ! command -v nvim >/dev/null && command -v vim >/dev/null; then
# 	export VIMINIT='source $MYVIMRC'
# 	export MYVIMRC="${XDG_CONFIG_HOME}"/vim/vimrc
# fi
