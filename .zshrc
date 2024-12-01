source $HOMEBREW_PREFIX/opt/zinit/zinit.zsh
zinit load zsh-users/zsh-syntax-highlighting
zinit load zsh-users/zsh-autosuggestions
zinit load MichaelAquilina/zsh-you-should-use

export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=zed


eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source $HOME/aliases.zsh

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

# proto
export PROTO_HOME="$HOME/.proto";
export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH";

export PATH
