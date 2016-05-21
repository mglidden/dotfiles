export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\u@\h:\W\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

source ~/.git-completion.bash
 
export HISTCONTROL=ignoredups
export HISTFILESIZE=100000

alias pod='~/Dropbox/Projects/CocoaPods/Rainforest/CocoaPods/bin/pod'
alias dnsflush='sudo killall -HUP mDNSResponder'

alias adb='/Users/mglidden/Library/Android/sdk/platform-tools/adb'

alias fea='FACTORY_EXTERNAL_ACCESS=allow vagrant reload'

alias ec='git diff --name-only | uniq | xargs mate'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
