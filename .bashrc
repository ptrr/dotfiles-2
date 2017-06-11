#
# ~/.bashrc
#

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

# NOTE Only run upgrades as root
# NOTE The command is apt-get, as recommended in the man pages
alias aguu="apt-get update && apt-get upgrade"
alias agudu="apt-get update && apt-get dist-upgrade"

# NOTE Run as regular user
alias ai="sudo apt install"
alias ar="sudo apt remove"
alias ap="sudo apt purge"
alias aar="sudo apt autoremove"
alias as="sudo apt search"
alias ash="sudo apt show"

# TODO do they need sudo?
alias acs="apt-cache search --names-only"
alias acsfull="apt-cache search --full"
alias acsh="apt-cache showpkg"

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

# Sessions
# FIXME check which one works in Debian
alias xfcegui="exec startxfce4"
alias xfceguinew="exec ck-launch-session startxfce4"

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

# Packages
alias debbackup="bash ~/bin/deb-backup.sh"

# System restore
# Requires apt-get install dselect
# feed it the file: dpkg --set-selections < file
# Install from file apt-get dselect-upgrade
