" vim: set ff=unix ft=vim fenc=utf-8:

" Vim-airline settings

" Enable/disable enhanced tabline
let g:airline#extensions#tabline#enabled = 1
" TODO: Can't get buffer separators to work. Figure out why
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" Use vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" Use jellybean theme (molokai is too bright)
let g:airline_theme='jellybeans'

