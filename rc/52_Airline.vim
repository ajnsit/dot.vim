" vim: set ff=unix ft=vim fenc=utf-8:

" Vim-airline settings

" Enable/disable enhanced tabline
let g:airline#extensions#tabline#enabled = 1

" Use vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" Use jellybean theme (molokai is too bright)
let g:airline_theme='jellybeans'

" Old Vim-powerline settings
" Fancy symbols in the powerline
" let g:Powerline_symbols = 'fancy'
" Show trailing whitespace status
" call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

