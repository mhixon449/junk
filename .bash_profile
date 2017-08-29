# get global env stuff
source /etc/profile

# AWS credentials
[ -z $AWS_DEFAULT_REGION ]    && export AWS_DEFAULT_REGION=us-west-2
[ -z $AWS_ACCESS_KEY_ID ]     && export AWS_ACCESS_KEY_ID=AKIAIQIS2T45DKD24GFQ
[ -z $AWS_SECRET_ACCESS_KEY ] && export AWS_SECRET_ACCESS_KEY=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

# local brew installation
export PATH=${HOME}/homebrew/bin:${PATH}

#aliases
alias ll='ls -l'
alias pull='git pull'
alias status='git status'
alias push='git push'
alias la='ls -al'
alias cl='cd .. ; ll'
alias c='clear'
alias goog='ping -c2 google.com'

# increase default history size
export HISTSIZE=5000

# get colors back
export CLICOLOR=1
export TERM=xterm-color
export LSCOLORS=ExFxCxDxBxegedabagacad

# Setup Amazon EC2 Command-Line Tools
export PATH=$PATH:$EC2_HOME/bin

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
# set path
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:$HOME/bin:/usr/local/bin:/usr/local/Cellar

# enable aws command completion
complete -C aws_completer aws

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
