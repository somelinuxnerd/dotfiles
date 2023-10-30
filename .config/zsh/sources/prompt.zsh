# ------------------------------------------
#  Startup File - sources/prompt.zsh
# ------------------------------------------

# If set, parameter expansion, command substitution and arithmetic expansion are performed in prompts. Substitutions within prompts do not affect the command status.
setopt PROMPT_SUBST

autoload -Uz vcs_info

add-zsh-hook precmd vcs_info

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true

# Set custom strings for an unstaged vcs repo changes (*) and staged changes (●)
zstyle ':vcs_info:*' unstagedstr ' ●'
zstyle ':vcs_info:*' stagedstr ' ●'

# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       " %F{98} %f%F{219}%b%F{3}%u%F{2}%c%F{98}%f"
zstyle ':vcs_info:git:*' actionformats " %F{98} %f%F{219}%b|%F{1}%a%F{3}%u%F{2}%c%F{98}%f"

PS1='%F{240}[%F{6}%~%F{240}]%f${vcs_info_msg_0_} %(?.%F{4}.%F{1})%(!.#.$)%f '
PS2="%F{240}[%f%F{255}%_%f%F{240}]%f "
