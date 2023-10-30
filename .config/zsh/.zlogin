# --------------------------------------
#  Startup File - .zlogin
# --------------------------------------
echo .zlogin

# Execute code in the background to not affect the current session
(

    setopt LOCAL_OPTIONS EXTENDED_GLOB

    # Function to determine the need of a zcompile. If the .zwc file
    # does not exist, or the base file is newer, we need to compile.
    # These jobs are asynchronous, and will not impact the interactive shell
    zcompare() {
        if [[ -s ${1} && ( ! -s ${1}.zwc || ${1} -nt ${1}.zwc) ]]; then
            if [[ -d "$1" ]]; then
                zcompile "$1" "$1"/*
            else
                zcompile "$1"
            fi
        fi
    }

    zcompare "${ZDOTDIR}"/comps
    zcompare "${ZDOTDIR}"/funcs
    zcompare "${ZDOTDIR}"/.zshenv
    zcompare "${ZDOTDIR}"/.zprofile
    zcompare "${ZDOTDIR}"/.zshrc
    zcompare "${ZDOTDIR}"/.zlogin

    # Compile zcompdump, if modified, to increase startup speed.
    # zcompdump="${ZDOTDIR:-$HOME}/.zcompdump"
    # if [[ -s "$zcompdump" && (! -s "${zcompdump}.zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]]; then
    #     zrecompile -pq "$zcompdump"
    # fi

) &!
