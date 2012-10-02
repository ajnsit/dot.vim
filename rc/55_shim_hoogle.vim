" vim: set ff=unix ft=vim fenc=utf-8:

" Set shortcuts for shim.vim (ghci integration)
autocmd FileType haskell nmap <C-c><C-l> :GhciRange<CR>
autocmd FileType haskell vmap <C-c><C-l> :GhciRange<CR>
autocmd FileType haskell nmap <C-c><C-f> :GhciFile<CR>
autocmd FileType haskell nmap <C-c><C-r> :GhciReload<CR>

" Hoogle shortcuts
au BufNewFile,BufRead *.hs map <buffer> <F1>   :Hoogle
au BufNewFile,BufRead *.hs map <buffer> <C-F1> :HoogleClose<CR>
au BufNewFile,BufRead *.hs map <buffer> <S-F1> :HoogleLine<CR>

