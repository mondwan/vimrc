" Modify comment standard for php
autocmd FileType php setl comments=sl:/**,mb:*,elx:*/,://,:# formatoptions=qrowcb

" Set checkers for php
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
