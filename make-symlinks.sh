#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

# dotfiles directory
dir=~/development-environment-setup

# old dotfiles backup directory
olddir=~/dotfiles_old

# list of files/folders to symlink in homedir
files="bashrc gitconfig functions"

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in `ls -d .*`; do
    echo "Moving any existing dotfiles from ~ to ${olddir}"
    # mv ~/$file $olddir
    echo "Creating symlink to------------  $dir/$file ------in home directory."
    ln -s $dir/$file ~/$file
done