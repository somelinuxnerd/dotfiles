# ------------------------------------------
#  Startup File - sources/plugins.zsh
# ------------------------------------------

# Plugin specific environment variables
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=1,bold,bg=1'

autoload -Uz plugin

plugin 'zsh-users/zsh-completions'
plugin 'zsh-users/zsh-autosuggestions'
plugin 'zsh-users/zsh-syntax-highlighting'
plugin 'zsh-users/zsh-history-substring-search'
# plugin 'somelinuxnerd/zsh-recent-directory-history'

eval "$(zoxide init zsh)"