export PYTHONPATH=/mit/6.02/audio/onepingonly/library

if [[ -s /Users/mglidden/.rvm/scripts/rvm ]] ; then source /Users/mglidden/.rvm/scripts/rvm ; fi

##
# Your previous /Users/mglidden/.bash_profile file was backed up as /Users/mglidden/.bash_profile.macports-saved_2012-01-24_at_19:10:59
##

# MacPorts Installer addition on 2012-01-24_at_19:10:59: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\h:\W \u\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

source ~/.git-completion.bash
 
alias gco='git co'
alias gci='git ci'
alias grb='git rb'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# openCV for kinect / python work
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

export DYLD_FALLBACK_LIBRARY_PATH=$DYLD_FALLBACK_LIBRARY_PATH:~/luminar/luxor-tesla/build/lib/Darwin:/usr/local/lib

HISTFILESIZE=50000

alias postr='tools/postreview.py -o'
alias ..='cd ..'

export HISTCONTROL=ignoredups
export HISTFILESIZE=100000

export PATH="/usr/local/narwhal/bin:$PATH"

export CAPP_BUILD="/Users/mglidden/Downloads/Starter/Build"
