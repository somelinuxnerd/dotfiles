# --------------------------------------
#  Startup File - .zprofile
# --------------------------------------
echo .zprofile

# Start GUI if on tty1 and an xinitrc file is found
if [[ -z "${DISPLAY}" && "${XDG_VTNR}" -eq 1 && -s "${XINITRC}" && -r "${XINITRC}" ]] && command -v startx >/dev/null; then
	print "Starting X Server.."
	exec startx >/dev/null 2>&1
fi
