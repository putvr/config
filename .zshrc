# If you come from bash you might have to change your $PATH.
# add gnutools and brew path
export PATH="~/.bin:/usr/local/sbin:/usr/local/opt/node@16/bin:/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    common-aliases
    git
    # git-flow-avh
    osx
    nvm
    node
    yarn
    ng
    vscode
    #    ansible
    docker
    docker-compose
    docker-machine
    brew
    #    kubectl
    #    minikube
    #    terraform
    #    vagrant
    #    vagrant-prompt
    #    aws
    # pyenv
    # poetry
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# gpg
export GPG_TTY=$(tty)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="edit ~/.zshrc"
#alias ohmyzsh="mate ~/.oh-my-zsh"
alias v="vim"
alias e="emacs"
alias cdd="cd ~/Documents/github/"
alias cdl="cd ~/Documents/learn/"
alias h="history|grep "
alias pgp="gpg"
alias bc="bc -l"
alias objdump="objdump -x86-asm-syntax=intel"
alias j="python -m json.tool"
alias uc="brew upgrade chromium && xattr -c /Applications/Chromium.app && open /Applications/Chromium.app"

if [[ $(hostname) == "users-MacBook-Pro.local" ]]; then 
    DEV_PREFIX=~/Documents/;
else
    DEV_PREFIX=~/Documents/github/;
fi;

# hledger
export LEDGER_FILE=wallet/2022/main.journal;
export LEDGER_FILE=$DEV_PREFIX$LEDGER_FILE;
alias hw="hledger-web"
alias hlb="hledger bal -M --depth=1 -V"

# brew first
export PATH=/usr/local/bin:$PATH

# hide the “user@hostname” info when you’re logged in as yourself on your local machine
prompt_context(){}

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm