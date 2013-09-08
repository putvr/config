#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lh='ls -lah'
alias ss='systemctl'
alias pm='pacman'
alias ya='yaourt'

PS1='[\u@\h \W]\$ '

export WINEARCH=win32 
export EDITOR="nano"
export PATH="$PATH:~/.bin"
