# ------------------------------------------
#  Startup File - sources/completions.zsh
# ------------------------------------------

# autoload -Uz compinit
# for dump in "${XDG_CACHE_HOME}"/zsh/zcompdump-$ZSH_VERSION(N.mh+24); do
#     compinit -d "${XDG_CACHE_HOME}"/zsh/zcompdump-$ZSH_VERSION
# done

# Enable completion cache
# zstyle ':completion:*' use-cache on
# zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}"/zsh/zcompcache

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/zsh/compcache

# Enable case-insensitive and partial word completions
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Enable menu selections
zstyle ':completion:*' menu select

# Enable colors in ls menu completions
zstyle ':completion:*' list-colors "$(dircolors)"

# Group completions by type
zstyle ':completion:*' group-name ''

# Format completion messages
zstyle ':completion:*:messages' format $'%F{magenta}-- %d --%f'
zstyle ':completion:*:warnings' format $'%F{red}-- No Matches Found --%f'
zstyle ':completion:*:descriptions' format $'%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'

if [ -f /usr/share/fzf/completion.zsh ]; then
    source /usr/share/fzf/completion.zsh
fi

# compinit -d "${XDG_CACHE_HOME}"/zsh/zcompdump-$ZSH_VERSION