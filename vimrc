" ----------
" Vim Config
" ----------
" Reference https://github.com/fsproru/vimfiles/blob/master/vimrc

set nocompatible                " Don't maintain compatibility with vi
filetype off
syntax on

" Vundle stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'majutsushi/tagbar'
Bundle 'Shutnik/jshint2.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'scrooloose/nerdtree'
Bundle 'chriskempson/vim-tomorrow-theme'

filetype plugin indent on

" Source initialization files
runtime! init/**.vim
