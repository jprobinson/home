#PATHS
export PATH=$HOME/bin:$HOME/bin/lib:$HOME/bin/share:/usr/local/bin:/usr/bin:/bin:$ORACLE_HOME/bin:/sbin:/usr/sbin:/usr/local/sbin:/etc:/usr/local/context/bin:.:$PATH

export JAVA_HOME=/usr/java/default

export MY_COMP=john-paul-robinson-7510.nyhq.nytint.com

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
green='\e[0;32m'
red='\e[1;31m'
#export PS1="\[\033[0;32m\][\u@\H:\w]$\[\033[0m\]"
export PS1="\[$(tput bold)\]\[${green}\]\t-\u@\h \W \\$\[$(tput sgr0)\] "
#export PS1="\[${green}\u@\h \[\e[01;34m\]\W \`if [ \$? = 0 ]; then echo -e '${green}:)'; else echo -e '${red}:('; fi\` \[\e[01;34m\]$\[\e[00m\] "

alias pp='python2.6 -mjson.tool'

#GO
export GOROOT=/usr/lib64/go
export GOPATH=/home/john.robinson/svn/email-platform/go/trunk
export GOMAXPROCS=10

alias gofmt='gofmt -w -l -tabs=true ./*'

# ONLY UNCOMMENT IF NOT USING SCREEN
#if [ "$BASH" ]; then
#    $HOME/bin/zsh
#fi

