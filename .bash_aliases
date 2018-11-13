#source $HOME/.bash_powerline
bind -f $HOME/.inputrc

export PATH=/opt/bb/bin:$PATH
export EDITOR=vim
export GIT_DISCOVERY_ACROSS_FILESYSTEM=1
export PGHOST=/opt/pgsql/data/
export PGDATA=/opt/pgsql/data
export PGDATABASE=postgres

alias l="ls -F"
alias ll="ls -l"
alias ltr="ls -ltr"
alias builddir="DIR=ninja MEM=512 tmpdir"
alias dbdir="DIR=/opt/bb MEM=1024 tmpdir"
alias go=". $HOME/bin/go"
alias golang="/usr/bin/go"
alias vim="vim -p -X"
alias vit="vim -t"
alias vi="vim"

alias g='git'
alias ga='git add'
alias gaa='git add --all'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'

alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcn!='git commit -v --no-edit --amend'
alias gca='git commit -v -a'
alias gcam='git commit -v -a -m'
alias gca!='git commit -v -a --amend'
alias gclean='git clean -fd'
alias gpristine='git reset --hard && git clean -dfx'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'

alias gd='git diff'
alias gdc='git diff --cached'
alias gdcw='git diff --cached --word-diff'

alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'

alias gg='git grep'

alias gl='git pull'
alias glog='tig'
alias glg='git log --oneline --decorate --graph'
alias glga='git log --oneline --decorate --graph --all'

alias gp='git push'
alias gp!='git push --force'
alias gpd='git push --dry-run'

alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grbu='git rebase upstream/master'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

alias gsb='git status -sb'
alias gss='git status -s'
alias gst='git status'
alias gshow='git show'

alias gwta='git worktree add'
alias gwtl='git worktree list'
alias gwtp='git worktree prune'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
