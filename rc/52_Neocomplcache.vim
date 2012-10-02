" vim: set ff=unix ft=vim fenc=utf-8:

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1

" Automatic completion is a performance hog
" Use manual completion (C-Space) instead
let g:neocomplcache_disable_auto_complete = 1
" <C-Space>: completion. Taken from <http://stackoverflow.com/a/510571>
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" Other Key-mappings.
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" <C-y>: Accept completion (usually the same as <CR>)
inoremap <expr><C-y>  neocomplcache#close_popup()
" <C-y>: cancel completion
inoremap <expr><C-e>  neocomplcache#cancel_popup()

