vimrc
=====

Configuration for vim

@author: Mond WAN <mondwan.1015@gmail.com>

@last-modified: 2017-06-08

# How to use:

```
# Install Vundle so that we can download other modules later on
# As I have mark a specific vundle with submodule, so install via git-submodule
git submodule update --init --recursive

# Copy vim configuration to your HOME directory
# Make sure ~/.vimrc and ~/.vim is empty at first
rm -fr ~/.vimrc ~/.vim

# Symbolic link .vimrc and .vim
ln -snf . $HOME/.vim
ln -snf vimrc $HOME/.vimrc

# Install other modules via Vundle
vim +BundleInstall +qall

# NOTE:
# As some of the vim modules rely on executables like `flake8`, `eslint`,
# and installation for them varied between platforms, you need to install them
# manually othewise corresponding plugins will not work.
```

# Scripts

You may try to run `config.sh` for installation as following:

```
$> bash config.sh
```

You can run following script to check whether commands required by those
vim modules have been installed or not.

```
$> bash check.sh
```

# Directory layout:

- README.md

This file

- vimrc

main entry of my vimrc settings

- init/

Decouple vimrc settings to several files for readability

- bundle/
- bundle/vundle

Despite Vundle, a submodule required by Vundle, all stuff here will be ignored

- .gitignore

Ignore stuff in bundle and any vim swp files

- ftplugin
- ftpligin/*.vim

Setting related to a specific language

# Package overview

Packages I have used which grouped by plug-ins

## snipmate

- [vim-snipmate](https://github.com/garbas/vim-snipmate.git)
- [tlib\_vim](https://github.com/tomtom/tlib\_vim.git)
- [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils.git)
- [vim-snippets](https://github.com/honza/vim-snippets.git)

## NERTREE

- [nerdtree](https://github.com/scrooloose/nerdtree.git)

## Tagbar

- [tagbar](https://github.com/majutsushi/tagbar.git)
- [exuberant-ctags](http://ctags.sourceforge.net/)

## Syntastic

- [syntastic](https://github.com/scrooloose/syntastic.git)
- [eslint](http://eslint.org/)
- [Php Code sniffer](https://github.com/squizlabs/PHP_CodeSniffer)
- [phpmd](http://phpmd.org/)
- luac
- luacheck
- flake8

## ColorScheme

- [Tomorrow](https://github.com/chriskempson/vim-tomorrow-theme)
- [Distinguished](https://github.com/Lokaltog/vim-distinguished)
- [Solarized](https://github.com/altercation/vim-colors-solarized)

# Reference

* http://nvie.com/posts/how-i-boosted-my-vim/
* http://codecampo.com/topics/717
* https://github.com/fsproru/vimfiles/blob/master/vimrc
* https://github.com/gmarik/Vundle.vim
