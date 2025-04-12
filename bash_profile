export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\u@\h:\W\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

source ~/.git-completion.bash
 
export HISTCONTROL=ignoredups
export HISTFILESIZE=100000

alias dnsflush='sudo killall -HUP mDNSResponder'

alias ec='git diff --name-only | uniq | xargs mate'

export EDITOR=/usr/bin/vim

export NVM_DIR="/Users/mglidden/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="/usr/local/opt/postgresql/bin:/opt/apache-maven/bin:$PATH"

complete -C /usr/local/bin/mc mc

source ~/tulip/tulip/scripts/setPaths.source.sh
. "$HOME/.cargo/env"
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH #InstallDevDeps
export GOPATH=$HOME/go; export PATH=$GOPATH/bin:$PATH #InstallDevDeps
