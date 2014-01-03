# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="schuyler"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast vi-mode)

# VI mode, but some habits die hard...                                          
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward
bindkey -M viins '^a' beginning-of-line
bindkey -M viins '^e' end-of-line

source $ZSH/oh-my-zsh.sh

HISTSIZE=10000
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_ignore_space

# Aliases
alias ls=" ls"
alias pygrep="grep -lr --include='*.py'"
alias hgrep="grep -lr --include='*.html'"
alias cgrep="grep -lr --include='*.h' --include='*.cpp' --include='*.mm' --include='*.hpp' --exclude-dir=build --exclude-dir=Frameworks --exclude-dir=WebKitBuild --exclude-dir=include --exclude-dir=linux"
alias bytime="ls -lrt"
alias bysize="ls -lalrS"
alias urldecode="perl -MURI::Escape -pe 'chomp; \$_ = uri_unescape(\$_)'"
alias urlencode="perl -MURI::Escape -pe 'chomp; \$_ = uri_escape(\$_);'"
alias md5sum="openssl md5"
alias diskusage="du -h -s * | sort -n"

export EDITOR=/usr/bin/vim

export ROKU_DEV_TARGET=10.0.1.19

# myPlex tokens
TOKEN_DEV=TbiMhpPpERZFq3wvtRVE
TOKEN_STAGING=2etr6gsWc8K6HxvhQp2q
TOKEN_PROD=tPrixzdNbNwY5CRRvA2X

# Customize to your needs...
#export PATH=$PATH:/blah

