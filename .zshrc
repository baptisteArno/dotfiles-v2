source $HOME/load_zinit.zsh
zinit load zsh-users/zsh-syntax-highlighting
zinit load zsh-users/zsh-autosuggestions
zinit load MichaelAquilina/zsh-you-should-use

export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=nvim


eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"
eval "$(zoxide init zsh)"

source $HOME/aliases.zsh

# Bun
[ -s "/Users/baptistearno/.bun/_bun" ] && source "/Users/baptistearno/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Better history
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

alias config='/usr/bin/git --git-dir=/Users/baptistearno/.cfg/ --work-tree=/Users/baptistearno'
