alias ls="ls -h"
alias diskusage="du -h -s * | sort -n"
alias im="vim"
alias ivm="vim"
alias xit="exit"
alias :q=' echo "You are not in vim!"'
alias jfind="find . -not -path '*build/*' -name"
#alias jgrep="grep -lr --include=*.java"
alias jgrep="grep -lr --include=*.java --exclude-dir=build"
alias ojgrep="grep -lr --include=*.j --exclude-dir=Build"
alias pygrep="grep -lr --include=*.py"
alias hgrep="grep -lr --include=*.html"
alias ijgrep="grep -lri --include=*.java"
#alias cgrep="grep -lr --include=*.h --include=*.cpp --include=*.mm"
alias cgrep="grep -lr --include=*.h --include=*.cpp --include=*.mm --exclude-dir=build --exclude-dir=Frameworks --exclude-dir=WebKitBuild"
alias bytime="ls -lrt"
alias bysize="ls -alrS"
alias urldecode="perl -MURI::Escape -pe 'chomp; \$_ = uri_unescape(\$_)'"
alias urlencode="perl -MURI::Escape -pe 'chomp; \$_ = uri_escape(\$_);'"
alias wf="ssh sullman@75.125.121.246"
alias md5sum="openssl md5"
alias base64='echo -e "Base 64 Encode: openssl enc -d -a\nBase 64 Decode: openssl enc -e -a"'
alias pms="cd ~/plex/plex-media-server"
alias plexkit="cd ~/plex/plex-media-server-webkit"
alias dl='$(which wget || echo "curl -O")'

export EDITOR=/usr/bin/vim
export INPUTRC=~/.inputrc
export HISTCONTROL=ignoreboth
# There's no implicit * on HISTIGNORE patterns
export HISTIGNORE="&:ls:exit:cd:vim"
export HISTSIZE=3000
export PATH="~/bin:~/scripts:$PATH"
export PS1="${debian_chroot:+($debian_chroot)}\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$"

# cvs for blackhawk
export CVSROOT=:pserver:schuyler.ullman@75.25.154.201:2401/Blackhawk

# perforce
export P4CONFIG=P4ENV
export P4PORT=perforce.ironport.com:1666

if [ -f ~/local.bashrc ]; then
  . ~/local.bashrc
fi

# todo.txt
export PATH="$PATH:~/todo.txt_cli"
alias todo='todo.sh -A -t -n'
