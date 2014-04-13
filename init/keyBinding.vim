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
nnoremap <F2> :SyntasticCheck<CR>
" Jump next errors stated on location-list
nnoremap <C-,> :lnext<CR>
nnoremap <C-.> :lprev<CR>

