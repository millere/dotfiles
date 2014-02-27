#!/bin/bash

dir=`pwd`
files="astylerc cmus vimrc gitconfig xinitrc Xresources"

echo $dir

for file in $files; do
	echo "Installing $file"
	ln -s $dir/$file ~/.$file
done

if [ -d $HOME/.vim/bundle/vundle ]; then
	exit 0
fi

wgit=`which git`
wvim=`which vim`

if [ -z $wvim ]; then
	echo "Vim not found in PATH; not boostrapping vundle"
	exit 0
fi

if [ -z $wgit ]; then
	echo "Git not found in PATH; not bootstrapping vundle"
	exit 0
fi

echo "Bootstrapping vundle to $HOME/.vim"

mkdir -p $HOME/.vim/bundle/vundle
cd $HOME/.vim/bundle
git clone https://github.com/gmarik/vundle.git
cd -

vim +BundleInstall +qall
