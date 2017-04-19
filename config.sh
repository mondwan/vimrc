#!/bin/bash

echo === Install Vundle
my_path=$PWD
git submodule update --init

echo === Copy VIM configurations to HOME directory
ln -snf ${my_path}/vimrc $HOME/.vimrc
ln -snf ${my_path} $HOME/.vim

echo === Install vim-plugins via Vundle
vim +BundleInstall +qall

cat << __EOF__
------------------------------------------------------------------------
Configuration is completed. However, you need to install programs
below in order to make those plugins work:

flake8, eslint, php_code_sniffer, phpmd, luac, luacheck, exuberant-ctags
bashate, shellcheck
------------------------------------------------------------------------
__EOF__
