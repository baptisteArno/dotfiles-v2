# git aliases
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gpf!="git push --force"
alias gf="git fetch --all"
alias gpl="git pull --rebase"
alias gr="git rebase"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias ga="git add -A"
alias gc="cz"
alias grm="gf && gr origin/main"
alias gcr="gc && grm"
alias grp="grm && gpf"
alias gcp="gc && gp"
alias gcrp="gc && grp"
alias gcrpb="gcr && git push -u origin HEAD"
alias gca="git add . && git commit --amend --no-edit"
alias gcap="gca && gpf"
alias gcarp="gca && grp"
alias gcom="gco main && grm && gpl"
alias gstap="git stash pop"
alias gco="git checkout"
alias gbd="git branch -D"
alias gs="git status"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd="git diff"

gb() { git branch $1 && gco $1 }
gcor() { gco $1 && grm }
gt() {git tag $1 && git push origin $1}
gsta() {git add . && git stash push --include-untracked -m "$1"}

# yalc
alias yalcp="nr build && yalc publish --push --sig"
alias yalca="yalc add"

# chezmoi
alias cm="chezmoi"
alias cme="chezmoi edit"
alias cma="chezmoi apply -v"
alias cmc="chezmoi cd"

alias ls="eza --icons=always"
alias cd="z"
alias cat="bat"

# ni
alias nrs="nr start"
alias nrb="nr build"
alias nrd="nr dev"
alias nrdm="nr dev:mocking"

alias pnpmu="pnpm up --latest -r"

alias vim="nvim"
alias lg="lazygit --use-config-file=\"$XDG_CONFIG_HOME/lazygit/config.yml\""

alias codei="code-insiders"
