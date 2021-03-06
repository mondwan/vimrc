" ----------
" Vim Config
" ----------
" Reference https://github.com/fsproru/vimfiles/blob/master/vimrc

set nocompatible                " Don't maintain compatibility with vi
filetype off
syntax on

" Vundle stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'mfukar/robotframework-vim'
Plugin 'isRuslan/vim-es6'

call vundle#end()
filetype plugin indent on

" Source initialization files
runtime! init/**.vim
