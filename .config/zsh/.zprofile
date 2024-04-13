# --------------------------------------
#  Startup File - .zprofile
# --------------------------------------

# Start GUI if on tty1 and a readable xinitrc file is found
if [[ -z "${DISPLAY}" && "${XDG_VTNR}" -eq 1 && -s "${XINITRC}" && -r "${XINITRC}" ]] && command -v startx >/dev/null; then
	print "\nStarting X Server.."
	exec startx >/dev/null 2>&1
fi
