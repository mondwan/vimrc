" Construct directory string of current editing file
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    if strlen(curdir) > 64
        curdir = "~/" + "..."
    endif
    return curdir
endfunction

" Config presentation format for the status line
set statusline=                                     " Empty statusline

set statusline+=%#identifier#
set statusline+=%m                                  " modified flag
set statusline+=%*

set statusline+=\ %{CurDir()}/%t                    " filename

set statusline+=%h                                  " help file flag
set statusline+=\ %y                                " file type

set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}       " file format
set statusline+=%*

set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''} " file encoding
set statusline+=%*

set statusline+=%#identifier#
set statusline+=%r                                  " read only flag
set statusline+=%*

set statusline+=%=                                  " left/right separator

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}        " Results from Syntastic plugin
set statusline+=%*

set statusline+=%#error#
set statusline+=%{&paste?'[PASTE]':''}              " Indicate paste mode
set statusline+=%*

set statusline+=\ %c,                               " cursor column
set statusline+=%l/%L                               " cursor line/total lines
set statusline+=\ %P                                " percent through file

