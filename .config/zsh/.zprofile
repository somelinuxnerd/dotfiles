# ----------------------------------------- #
#  $ZDOTDIR/.zprofile						#
# ----------------------------------------- #


# -- Ensure Zsh Directories Exist --------- #

mkdir -p "${XDG_CACHE_HOME}/zsh" "${XDG_DATA_HOME}/zsh" &!


# -- Xorg Variables ----------------------- #

export XINITRC="${XDG_CONFIG_HOME}"/X11/xinitrc									# xinitrc file path
export ERRFILE="${XDG_CACHE_HOME}"/X11/xsession-errors							# xsession error log file
export ICEAUTHORITY="${XDG_CACHE_HOME}"/ICEauthority							# Inter-Client Exchange (ICE) Protocol file path

# xauthority credentials file (only set if none of these display managers are currently active)
if ! systemctl is-active gdm.service lightdm.service lxdm.service ly.service slim.service &>/dev/null; then
	export XAUTHORITY="${XDG_RUNTIME_DIR}"/Xauthority
fi


# -- Modify Console Color Scheme ---------- #

if [[ -o interactive ]] && [[ "${TERM}" == "linux" ]] && [[ "${__ZSH_TTY_COLORSCHEME_LOADED:-}" -ne 1 ]]; then
	autoload -Uz load_tty_colorscheme
	load_tty_colorscheme

	function reset() {
		command reset
		load_tty_colorscheme
	}
fi


# -- Start X11 Session -------------------- #

# Start X11 display server if needed
if \
	# check that startx is installed
	command -v startx >/dev/null && \
	# check that the file path stored in $XINITRC is an existing, readable file
	[[ -r "${XINITRC}" ]]; \
	# check that the current terminal is a tty
	[[ "${TERM}" = "linux" ]] && \
	# check that the current session is running via tty1
	[[ "${XDG_VTNR}" -eq 1 ]]
	# check that no wayland or x11 session is currently running
	[[ -z "${WAYLAND_DISPLAY:-DISPLAY}" ]] && \
then
	exec startx
fi
