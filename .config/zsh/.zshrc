typeset -U cdpath
cdpath=( $HOME )
export cdpath
autoload -Uz add-zsh-hook
autoload -Uz $ZDOTDIR/func.d/**/*(.N)
add-zsh-hook precmd update-titles
setopt GLOB_DOTS
setopt INTERACTIVE_COMMENTS
setopt RM_STAR_SILENT
unsetopt BEEP
unsetopt NOMATCH
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_MINUS
setopt PUSHD_SILENT
setopt PUSHD_TO_HOME
DIRSTACKSIZE=26
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
HISTFILE="${XDG_STATE_HOME}/zsh_history"
HISTSIZE=5000
SAVEHIST=5000
HISTORY_IGNORE="(exit|clear|reset|pwd|ls|cd|cd ..)"
setopt PROMPT_SUBST
autoload -Uz vcs_info
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats "%F{magenta}%s:%b%f%u%c "
zstyle ':vcs_info:*' actionformats "%F{magenta}%s:%b%f%u%c (%B%a%f) "
zstyle ':vcs_info:*' unstagedstr "%F{red}◼%f"
zstyle ':vcs_info:*' stagedstr "%F{green}◼%f"
PROMPT='%F{cyan}%~%f ${vcs_info_msg_0_}%(!.%F{red}#.%F{blue}$)%f '
RPROMPT='%(?..%F{240}[%F{red}%B%?%b%f%F{240}]%f)'
PS2='%F{240}[%f%_%F{240}]%f '
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes
zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}"/zsh/compcache
zstyle ':completion:*' group-name ''
zstyle ':completion:*:messages' format $'%F{magenta}-- %d --%f'
zstyle ':completion:*:warnings' format $'%F{red}-- no matches --%f'
zstyle ':completion:*:descriptions' format $'%F{green}%B-- %d --%b%f'
zstyle ':completion:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' gain-privileges 1
ZCOMPDUMP="${XDG_CACHE_HOME}"/zsh/compdump
autoload -Uz compinit
for dump in "${ZCOMPDUMP}"(N.mh+24); do
compinit -d "${ZCOMPDUMP}"
done
compinit -d "${ZCOMPDUMP}" -C
zmodload zsh/complist
autoload -Uz edit-command-line
zle -N edit-command-line
zle -N cut-command-line
zle -N copy-command-line
zle -N paste-command-line
zle -N reset-screen
autoload -Uz bracketed-paste-url-magic
zle -N bracketed-paste bracketed-paste-url-magic
bindkey -A emacs main
bindkey -s '^[[1~' '^[[H'
bindkey -s '^[[4~' '^[[F'
bindkey -s '^[[4h' '^[[2~'
bindkey -s '^[[3~' '^[[P'
bindkey	'^A'      beginning-of-line
bindkey '^E'      end-of-line
bindkey	'^U'      backward-kill-line
bindkey '^K'      kill-line
bindkey '^[[1;5H' backward-kill-line
bindkey '^[[1;5F' kill-line
bindkey '^[[H'    beginning-of-line
bindkey '^[[F'    end-of-line
bindkey '^[[2~'   overwrite-mode
bindkey	'^[[P'	  delete-char
bindkey	'^[[1;5D' backward-word
bindkey	'^[[1;5C' forward-word
bindkey '^[[1;3C' emacs-forward-word
bindkey '^[[1;3D' emacs-backward-word
bindkey	'^[[1;2D' backward-kill-word
bindkey	'^[[1;2C' kill-word
bindkey '^[[3;5~' kill-word
bindkey	'^_'      undo
bindkey	'^Z'      undo
bindkey '^Y'      redo
bindkey	'^X^E'    edit-command-line
bindkey	'^X^X'    cut-command-line
bindkey	'^X^V'    paste-command-line
bindkey '^X^L'    reset-screen
bindkey '^X^?'    kill-whole-line
bindkey '^Xy'     copy-command-line
bindkey '^L'    reset-screen
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect '^l' reset-screen
bindkey -M menuselect "+" accept-and-menu-complete
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
autoload -Uz load_plugin
load_plugin 'zsh-users/zsh-autosuggestions'
load_plugin 'zsh-users/zsh-syntax-highlighting'
load_plugin 'zsh-users/zsh-history-substring-search'
if (( $+widgets[history-substring-search-up] )); then
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
fi
if (( $+commands[zoxide] )); then
source <(zoxide init zsh)
fi
alias '/r'='exec zsh'
alias '/rl'='exec zsh --login'
alias '/rmbc'='find "${ZDOTDIR:-$HOME}"/ -type f -name "*.zwc" -exec rm -f {} \;'
alias '?'='echo "zsh, Level: ${SHLVL}, User: $(id -un) ($(id -u)), Group: $(id -gn) ($(id -g))"'
alias sudo='sudo '
alias history='history -t "%F %T"'
alias cp='cp --verbose'
alias mv='mv --verbose'
alias rm='rm --verbose'
alias mkdir='mkdir --verbose --parents'
alias rmdir='rmdir --verbose'
alias grep='grep --color=auto --exclude-dir={.git,.svn}'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias df='df --human-readable'
alias du='du --human-readable'
alias free="free --human"
alias watch="watch --color"
alias python="python -q"
alias ffmpeg='ffmpeg -hide_banner -loglevel warning -stats'
alias ncmpcpp='ncmpcpp --quiet'
alias adb='HOME="${ANDROID_USER_HOME:-$HOME/.local/share/android}" adb'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias cdb='cd "${OLDPWD}"'
alias cd-='cd "${OLDPWD}"'
alias cdr='cd "$(readlink -f "${PWD}")"'
if (( $+commands[eza] )); then
alias ls='eza --color=auto --smart-group --group-directories-first --time-style=long-iso'
alias l='ls -Al'
alias lf='ls -Afl'
alias ld='ls -ld *(-/DN)'
alias lv='ls -l'
alias lh='ls -ld .*'
alias lc='ls -Adl'
alias lg='ls -AlG'
else
alias ls='ls --color=auto --group --group-directories-first --time-style=long-iso --human-readable'
alias l='ls -Al'
alias lf='ls -AFl'
alias ld='ls -ld *(-/DN)'
alias lv='ls -l'
alias lh='ls -ld .*'
alias lc='ls -Adl'
fi
alias re='reset'
alias rd='rmdir'
alias ka='sudo killall --exact --ignore-case'
alias now='date "+%A, %B %d, %l:%M %p %Z" | tr -s " "'
alias sc='sudo --preserve-env -- systemctl --system'
alias scu='systemctl --user'
if (( $+commands[bat] )); then
alias cat='bat --color=auto --style=plain --paging=never'
alias -g HH='--help 2>&1 | bat --plain --language=help'
alias -g HA='--help-all 2>&1 | bat --plain --language=help'
else
alias -g HH='--help 2>&1 | less'
alias -g HA='--help-all 2>&1 | less'
fi
if (( $+commands[htop] )); then
alias htop='sudo --preserve-env htop'
alias htopc='htop --sort-key=PERCENT_CPU'
alias htopm='htop --sort-key=PERCENT_MEM'
alias htopi='htop --sort-key=IO_RATE'
alias htopp='htop --sort-key=PRIORITY'
alias htopn='htop --sort-key=NICE'
fi
if (( $+commands[yt-dlp] )); then
alias dlp='yt-dlp'
alias dli='yt-dlp --ignore-config'
alias dlv='yt-dlp --quiet --progress'
alias dls='yt-dlp --quiet --progress --live'
fi
if (( $+commands[pacman] )); then
alias spm='sudo pacman'
alias pm='pacman'
alias pms='pacman -Ss'
alias pmi='sudo pacman -S --noconfirm'
alias pmr='sudo pacman -Rns --noconfirm'
alias pmu='sudo pacman -Syu --noconfirm'
alias pmro='sudo pacman -Rns $(pacman -Qdtq)'
alias pmul='sudo rm -f /var/lib/pacman/db.lck'
alias pmli='pacman -Q'
alias pmle='pacman -Qe'
alias pmlf='pacman -Qm'
alias pmlo='pacman -Qtdq'
alias pmlu='pacman -Qu'
alias pmrc='sudo pacman -Scc'
alias pmcc='paccache -rk 3'
alias pmcv='du -sh /var/cache/pacman/pkg'
alias pmcl='ls -1 /var/cache/pacman/pkg'
fi
if (( $+commands[paru] )); then
alias pa='paru'
alias pas='paru -Ss'
alias pai='paru -S --skipreview --noconfirm'
alias pau='paru -Syua'
alias palu='paru -Qua'
fi
if (( $+commands[sudo] && $+commands[reflector] )); then
alias updatemirrors="sudo reflector --verbose --country US --latest 50 --number 15 --fastest 30 --save /etc/pacman.d/mirrorlist"
alias updatemirrorsr="sudo reflector --verbose --country US --latest 50 --number 15 --sort rate --save /etc/pacman.d/mirrorlist"
fi
if (( $+commands[rlwrap] )); then
if (( $+commands[dash] )); then
alias dash='rlwrap dash'
fi
if (( $+commands[nc] )); then
alias nc='rlwrap nc'
fi
fi
alias updatedb='sudo updatedb'
if (( $+commands[edit] )); then
alias e='edit'
alias se='sudo --preserve-env -- edit'
fi
alias -g -- G='| grep'
alias -g -- H='| head'
alias -g -- L='| wc --lines'
alias -g -- P='| "${PAGER:-less}"'
alias -g -- S='| sort --numeric-sort'
alias -g -- T='| tail'
alias -g -- U='| uniq'
if [ -n "${DISPLAY:-}" ]; then
if (( $+commands[xclip] )); then
alias -g -- C='| perl -pe "chomp if eof" | xclip -selection clipboard -in'
elif (( $+commands[xsel] )); then
alias -g -- C='| perl -pe "chomp if eof" | xsel --clipboard --input'
fi
elif [ -n "${WAYLAND_DISPLAY:-}" ] && (( ${+commands[wl-copy]} )); then
alias -g -- C='| perl -pe "chomp if eof" | wl-copy'
fi
alias dp='yt-dlp --trim-filenames 200 --download-archive download-archive.txt --paths "home:$HOME/Temp/private/pr0n/000"'
alias c='cat'
alias clcat='clear && cat'
alias clc='clear &&'
alias cll='clear && ls -Al'
alias cl='clear'
alias cdcl='cd && clear'
alias mus='command ncmpcpp -q'
