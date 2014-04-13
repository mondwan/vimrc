vimrc
=====

##What's News:

Using [Vundle](https://github.com/gmarik/Vundle.vim) instead of [pathogen](https://github.com/tpope/vim-pathogen)
to manage my vim-plugins.

#Directory layout:

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
- ftpligin/javascript.vim
- ftpligin/make.vim
- ftpligin/php.vim
- ftpligin/python.vim

Some vimrc setting related to a specific language

#Quick reference for plug-ins I have installed

Grouped by target plug-in.

Note: Some of them are dependencies which required you to install them manually

##snipmate

- [vim-snipmate](https://github.com/garbas/vim-snipmate.git)
- [tlib\_vim](https://github.com/tomtom/tlib\_vim.git)
- [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils.git)
- [vim-snippets](https://github.com/honza/vim-snippets.git)

##NERTREE

- [nerdtree](https://github.com/scrooloose/nerdtree.git)

##Tagbar

- [tagbar](https://github.com/majutsushi/tagbar.git)
- [exuberant-ctags](http://ctags.sourceforge.net/)

##Syntastic

- [syntastic](https://github.com/scrooloose/syntastic.git)
- [pylint](http://www.pylint.org/)
- [jshint](http://www.jshint.com/)
- [Php Code sniffer](https://github.com/squizlabs/PHP_CodeSniffer)
- [phpmd](http://phpmd.org/)

##ColorScheme

- [Tomorrow](https://github.com/chriskempson/vim-tomorrow-theme)
- [Distinguished](https://github.com/Lokaltog/vim-distinguished)
- [Solarized](https://github.com/altercation/vim-colors-solarized)

#Reference

* http://nvie.com/posts/how-i-boosted-my-vim/
* http://codecampo.com/topics/717
* https://github.com/fsproru/vimfiles/blob/master/vimrc
* https://github.com/gmarik/Vundle.vim
