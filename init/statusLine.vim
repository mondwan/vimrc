" Construct directory string of current editing file
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

" Indicate whether we are under PASTE mode or not
function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction

" Config presentation format for the status line
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
set statusline+=\ \ \ [%{&ff}/%Y]
set statusline+=\ \ \ %<%20.30(%{CurDir()}%)\
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L
