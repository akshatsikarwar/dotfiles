#source $HOME/.bash_powerline
bind -f $HOME/.inputrc

export PATH=$(printf %s "$HOME/bin:/opt/bb/bin:$PATH" | gawk -vRS=: '!a[$0]++' | paste -s -d: -)
export EDITOR="vim --clean"

alias c="cluster"
alias gdb="gdb -q"

alias ls="ls -F"
alias l="ls"
alias ll="ls -l"
alias lla="ls -la"
alias ltr="ls -ltr"
alias go=". $HOME/bin/go"
alias vim="vim -p -X"
alias vi="vim"
alias vit="vim -t"
alias view="vim -R"
alias vimdiff="vim -d"
function vil {
    vi $(echo $1 | sed 's!:! +!')
}

alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gai='git add --interactive'
alias gap='git add --patch'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gblame='git blame'

alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcn!='git commit -v --no-edit --amend'
alias gca='git commit -v -a'
alias gcam='git commit -v -a -m'
alias gca!='git commit -v -a --amend'
alias gcm='git commit -m'
alias gclean='git clean -fd'
alias gpristine='git reset --hard && git clean -dfx'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'

alias gd='git diff'
alias gds='git diff --staged'
alias gdsw='git diff --staged --word-diff'

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
alias gpo='git push origin'
alias gpo!='git push --force origin'
alias gpu='git push upstream'
alias gpu!='git push --force upstream'
alias gpd='git push --dry-run'

alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grbu='git rebase upstream/main'
alias grh='git reset --hard'
alias grhh='git reset --hard HEAD'

alias gsb='git status -sb'
alias gsign='git commit --amend --no-edit --signoff'
alias gss='git status -s'
alias gst='git status'
alias gshow='git show'

alias gwta='git worktree add'
alias gwtl='git worktree list'
alias gwtp='git worktree prune'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
