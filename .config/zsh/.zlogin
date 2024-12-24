# ------------------------------------------ #
#  Startup File - .zlogin                    #
# ------------------------------------------ #

(

	setopt LOCAL_OPTIONS EXTENDED_GLOB

	is_newer() {
		[[ -s $1 && ( ! -s $2 || $1 -nt $2 ) ]]
	}

	# Compile all startup files and .zshrc snippet files in zshrc.d directory
	for file in .zshenv .zprofile .zlogin .zlogout; do
		if is_newer "${file}" "${file}.zwc"; then
			echo "Updated: $file, Compiling: $ZDOTDIR/$file"
			zcompile "$file"
		fi
	done

	for file in ${ZDOTDIR}/zshrc.d/*(.N); do
		if is_newer "$file" "$ZDOTDIR/.zshrc.zwc"; then
			echo "Updated: $file, Compiling: $ZDOTDIR/.zshrc"
			zcompile $ZDOTDIR/.zshrc
			break
		fi
	done

	for file in ${ZDOTDIR}/func.d/*(.N); do
		if is_newer "$file" "$ZDOTDIR/func.d.zwc"; then
			echo "Updated: $file, Compiling: $ZDOTDIR/func.d"
			zcompile $ZDOTDIR/func.d $ZDOTDIR/func.d/*
			break
		fi
	done

	if is_newer "${XDG_CACHE_HOME}"/zsh/compdump "${XDG_CACHE_HOME}"/zsh/compdump.zwc; then
		echo "compile compdump: $XDG_CACHE_HOME/zsh/compdump"
		zcompile "${XDG_CACHE_HOME}"/zsh/compdump
	fi

) &!
