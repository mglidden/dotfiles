#!/bin/bash
# based on script by http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

gitdir=~/dotfiles
backupdir=~/dotfiles_backup  # will move any existing files here
dotfiles="bash_profile git-completion.bash gitconfig vim vimrc"

mkdir -p $backupdir

for file in $dotfiles; do
  if [ -f $file ]; then
    mv ~/.$file $backupdir/
  fi
  ln -s $gitdir/$file ~/.$file
done
