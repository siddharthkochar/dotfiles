#general
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'

#dir
alias pf='cd /d/work/energage/platform'
alias twp='cd /d/work/energage/twp'
alias ps='cd /d/work/energage/energage.storage'
alias karma='cd /d/work/karma'

#git
alias gc='git checkout'
 __git_complete gc _git_checkout

alias gcb='git checkout -b'
alias gcm='gc master && git pull'
alias gsm='git switch master'
alias gpfcm='pf && gcm'
alias gtwpcm='twp && gcm'
alias grm='git pull --rebase origin master'

alias grb='git pull --rebase origin master'
__git_complete grb _git_pull

alias glb='gc @{-1}'
alias grh='git reset --hard'

alias gbdel='grh && gsm && git branch -D @{-1}'
__git_complete gdel _git_branch

alias gdel='git branch -D'
alias gdelold="git branch --format='%(refname:short) - %(committerdate:relative)' | egrep '\*|(month|months|year|years)' | xargs git branch -D"
alias gdelrecent="git branch --format='%(refname:short) - %(committerdate:relative)' | egrep '\*|(week|weeks)' | xargs git branch -D"
alias gs='git status'
alias gl="git log --pretty=format:\"%C(magenta)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) [%an]\" --abbrev-commit -30"
alias gbr="git branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate"
alias gsave="git add . && git commit -m"
alias gpush="git push -u origin head"
alias gpushkar="grh && git push -u origin head"

#kubectl
alias k='kubectl'
alias kgpo='k get pods'
alias kgpoc='kgpo -o jsonpath={.spec.containers[*].name}'
alias kcgc='k config get-contexts'
alias kcuc='k config use-context'
alias kl='k logs'
