#
# ~/.bashrc
# Symlinked to /root/.bashrc
#

# if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    # export TERM='xterm-256color'
# else
    # export TERM='xterm-color'
# fi


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Root and normal user prompt
if [ $(id -u) -eq 0 ];
then
    PS1="\[\e[33m\]\w\[\e[m\] \[\e[31m\]#\[\e[m\] "
else
    PS1="\[\e[32m\]\w\[\e[m\] \[\e[1;31m\]>\[\e[m\] "
fi

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

# TODO Need to test this
alias al="sudo apt list"

# Common configs
alias bbb="vim ~/.bashrc"
alias ccc="vim ~/.config/conky/conky.conf"
alias mmm="vim ~/.muttrc"
alias nnn="vim ~/.newsbeuter/urls"
alias sss="vim ~/.mutt/mails/signature"
alias ttt="vim ~/.taskrc"
# NOTE qutebrowser is not in Debian repos
# alias qqq="vim ~/.config/qutebrowser/qutebrowser.conf"
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
alias xfcegui="exec startxfce4"

# Tasks
alias t="task"
alias tl="task list"
alias ta="task add"
alias td="task done"
alias tm="task modify"
alias tx="task delete"

