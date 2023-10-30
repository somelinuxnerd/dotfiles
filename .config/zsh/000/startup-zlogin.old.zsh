# ------------------------------------------
#  Startup File - .zlogin
# ------------------------------------------

# echo "[$(tty | sed 's:^/dev/::')] [$(date "+%T")]: zlogin" | tee -a "$HOME/zshlog"

# Execute code in the background to not affect the current session
# (

    setopt LOCAL_OPTIONS EXTENDED_GLOB

    # Function to determine the need of a zcompile. If the .zwc file
    # does not exist, or the base file is newer, we need to compile.
    # These jobs are asynchronous, and will not impact the interactive shell
    zcompare() {
        if [[ -s ${1} && ( ! -s ${1}.zwc || ${1} -nt ${1}.zwc) ]]; then
            zcompile ${1}
        fi
    }

    zcompare "${ZDOTDIR}"/funcs.d

    # # Compile startup files if modified
    # for file in zshenv zprofile zshrc zlogin zlogout; do
    #     _path="${ZDOTDIR}/${file}"
    #     if [[ -s "$_path" && (! -s "${_path}.zwc" || "${_path}" -nt "${_path}.zwc") ]]; then
    #         zcompile "${_path}"
    #     fi
    # done


    # # Compile zcompdump if modified
    # zcompdump="${XDG_CACHE_HOME}/zcompdump"
    # if [[ -s "${zcompdump}" && (! -s "${zcompdump}.zwc" || "${zcompdump}" -nt "${zcompdump}.zwc") ]]; then
    #     zcompile "$zcompdump"
    # fi

# ) &!
