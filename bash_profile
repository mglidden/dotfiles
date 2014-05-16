export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\h:\W \u\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

source ~/.git-completion.bash
 
export HISTCONTROL=ignoredups
export HISTFILESIZE=100000
