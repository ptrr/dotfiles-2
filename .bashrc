#
# ~/.bashrc
#

# Autocomplete with sudo
if [ "$PS1" ]; then
    complete -cf sudo
fi

# Needed with i3
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom prompt
PS1="\[\e[32m\]\w\[\e[m\] \[\e[1;31m\]>\[\e[m\] "

export VISUAL=vim
export EDITOR="$VISUAL"

# Aliases
# --------------------------------------------------------------------

# Admin
alias pSyu="sudo pacman -Syu" # system upgrade
alias aSyu="pacaur -Syu --aur" # system upgrade aur
alias pD="sudo pacman -D" # control package install state with `--asdeps` or `--asexplicit`

alias pS="pacaur -S" # sync download
alias pSs="sudo pacman -Ss" # query database for package
alias ps="pacaur --search" # search aur
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

# Common configs
alias bbb="vim ~/.bashrc"
alias blocks="vim ~/.config/i3blocks/config"
alias iii="vim ~/.config/i3/config"
alias mmm="vim ~/.muttrc"
alias nnn="vim ~/.newsbeuter/urls"
alias sss="vim ~/.mutt/mails/signature"
alias ttt="vim ~/.taskrc"
alias vvv="vim ~/.vimrc"
alias xxx="vim ~/.Xresources"

# Curl
alias cO="curl -O"

# Editor
alias v="vim"

# Encryption
alias gpge="gpg -e -r"
alias gpgde="gpg -d -r"
alias gpgs="gpg -s -r"

# Git
alias gadd="git add"
alias gall="git add -A"

alias gcom="git commit -m"
alias gtag="git tag -a"

alias gch="git checkout"
alias gchb="git checkout -b"

alias gph="git push -u origin HEAD"
alias gpm="git push -u origin master"

# Jekyll
alias bejs="bundle exec jekyll serve"
alias bejsdev="bundle exec jekyll serve --config _config.yml,_config-dev.yml"

# Reload files
alias rbbb="source ~/.bashrc"
alias rxxx="xrdb -merge ~/.Xresources"

# Tasks
alias t="task"
alias tl="task list"
alias ta="task add"
alias td="task done"
alias tm="task modify"
alias tx="task delete"

# YouTube dl
alias mp3="youtube-dl -x --audio-format mp3 -o '~/Music/%(title)s.%(ext)s'"
alias ytmp3="youtube-dl -x --audio-format mp3 -o '~/Music/Youtube/%(title)s.%(ext)s'"

# NOTE for i3
alias fehbg="feh --bg-scale"
