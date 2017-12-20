" Make sure replacing tab with spaces
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab

" Set checker
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_c_compiler_options = '-Wall -std=c99'
let g:syntastic_c_config_file = '.syntastic_c_config'

function! Formatonsave()
    let l:lines = printf("1:%d", line('$'))
    let l:formatdiff = 1
    pyf /usr/share/clang/clang-format-5.0/clang-format.py
endfunction
autocmd BufWritePre *.h,*.cc,*.cpp,*.c call Formatonsave()
