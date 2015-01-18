#!/bin/bash

# ls aliases
alias ls='ls --color=auto'
alias lh='ls -lah'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# Debian Dev
alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"

# Git aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '

# Arch Env
if [ -f /etc/arch-release ]; then
    alias ss='systemctl '
    alias pm='sudo pacman '
#   alias ya='yaourt'
	alias install='yaourt '
	alias update='yaourt -Syua'
fi

alias m='mc'

