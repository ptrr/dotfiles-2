#
# ~/.bashrc
#

export LANG="en_GB.utf8"
export LC_ALL="en_GB.utf8"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\[\e[34m\]\A\[\e[m\] \[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]\[\e[1;31m\] \w\[\e[m\] \[\e[38m\]\\$\[\e[m\] "

# Aliases
# --------------------------------------------------------------------
# General
alias ls="ls -a --color=auto"

# Editor
alias v="vim"

# Admin
alias pSyu="sudo pacman -Syu" # system upgrade
alias aSyu="pacaur -Syu --aur" # system upgrade aur
alias pk="pacaur -k" # check aur packages

alias pD="sudo pacman -D" # control package install state with `--asdeps` or `--asexplicit`

alias pS="pacaur -S" # sync download
alias pSs="sudo pacman -Ss" # query database for package
alias pSi="sudo pacman -Si" # see remote package details

alias pi="pacaur -i" # see aur package details
alias ps="pacaur -s" # search aur

alias pRs="pacaur -Rs" # remove unless conflicting deps
alias pRnsc="sudo pacman -Rnsc" # remove recursively
alias pRnscQqdt="sudo pacman -Rnsc $(pacman -Qqdt)" # remove orphans

alias pQi="sudo pacman -Qi" # see package details
alias pQs="sudo pacman -Qs" # list packages based on query
alias pQmq="sudo pacman -Qmq" # list foreign packages
alias pQdt="sudo pacman -Qdt" # list orphans

alias pcache1="sudo paccache -rk 1" # remove cache except last item
alias pcache0="sudo paccache -ruk0" # remove all cache

# Admin - backups
alias pQqback="sudo pacman -Qq > packages-all.txt"
alias pQnqback="sudo pacman -Qnq > packages-native.txt"
alias pQmqback="sudo pacman -Qmq > packages-foreign.txt"
alias pQqeback="sudo pacman -Qqe > packages-explicit.txt"
alias pQqdback="sudo pacman -Qqd > packages-deps.txt"
alias pQqgback="sudo pacman -Qqg > packages-groups.txt"

alias pacback="bash ~/my-utils/backup-pacman-packages.sh" # does the above backups automatically

# Jekyll
alias bejs="bundle exec jekyll serve"
alias bejsdev="bundle exec jekyll serve --config _config.yml,_config-dev.yml"

# Sessions
alias xfcegui="exec startxfce4"

# Git
alias gadd="git add"
alias gall="git add -A"
alias gcom="git commit -m"
alias ghead="git push -u origin HEAD"
alias gpush="git push -u origin master"

# Tasks
alias t="task"
alias tl="task list"
alias ta="task add"
alias td="task done"
alias tm="task modify"
alias tx="task delete"

# Encryption
alias crypt="gpg -e -r"
alias decrypt="gpg -d -r"
alias sign="gpg -s -r"
alias vanish="shred -xu"

# Common configs
alias vvv="vim ~/.vimrc"
alias bbb="vim ~/.bashrc"
alias mmm="vim ~/.muttrc"
alias ttt="vim ~/.taskrc"
alias sss="vim ~/.mutt/mails/signature"
alias ccc="vim ~/.config/conky/conky.conf"
alias nnn="vim ~/.newsbeuter/urls"

# Reload files
alias rbbb="source ~/.bashrc"
