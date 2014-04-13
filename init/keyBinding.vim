" Quicker window movement
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" Jump to the front of the vim command
cmap <C-a> <C-b>

" Quicker for typing vim commands in normal mode
nnoremap ; :

" Calling nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

" Calling tagbar
nnoremap <F1> :TagbarToggle<CR>

" Calling Syntastic
function! ToggleErrors()
" http://stackoverflow.com/questions/17512794/toggle-error-location-panel-in-syntastic?answertab=votes#tab-top
    let old_last_winnr = winnr('$')
    lclose
    SyntasticReset
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        SyntasticCheck
        Errors
    endif
endfunction

nnoremap <F2> :call ToggleErrors()<CR>
" Jump next errors stated on location-list
nnoremap <F3> :lnext<CR>
nnoremap <F4> :lprev<CR>

