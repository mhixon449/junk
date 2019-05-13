# get global env stuff
source /etc/profile

# history improvements
shopt -s histappend
HISTFILESIZE=2000000000
HISTSIZE=2000000000
#HISTCONTROL=ignoredups
HISTTIMEFORMAT='%F %T '
PROMPT_COMMAND='history -a'

#aliases
alias ll='ls -l'
alias pull='git pull'
alias status='git status'
alias push='git push'
alias la='ls -al'
alias cl='cd .. ; ll'
alias c='clear'
alias goog='ping -c2 google.com'

# get colors back
export CLICOLOR=1
export TERM=xterm-color
export LSCOLORS=ExFxCxDxBxegedabagacad

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
# set path
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:$HOME/bin:/usr/local/bin:/usr/local/Cellar

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
