export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
PS1='%F{3}%3~ $(vcs_info_wrapper)%f$ '

export HISTCONTROL=ignoredups
export HISTFILESIZE=100000

alias dnsflush='sudo killall -HUP mDNSResponder'

alias ec='git diff --name-only | uniq | xargs mate'

export EDITOR=/usr/bin/vim

export NVM_DIR="/Users/mglidden/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="/usr/local/opt/postgresql/bin:/opt/apache-maven/bin:$PATH"

source ~/tulip/tulip/scripts/setPaths.source.sh

autoload -U +X bashcompinit && bashcompinit
