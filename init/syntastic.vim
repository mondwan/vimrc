" Always stick any detected errors into the location-list
let g:syntastic_always_populate_loc_list = 1

" Change error symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!!'
let g:syntastic_style_error = 'S✗'
let g:syntastic_style_warning = 'S!!'

" No tooltips errors
let g:syntastic_enable_balloons = 0

" Auhtor information
let g:snips_author = 'Mond WAN'
let g:snips_email = 'mondwan.1015@gmail.com'
let g:snips_github = 'https://github.com/mondwan'

" Change colors on error highlight
 highlight link SyntasticError Error
