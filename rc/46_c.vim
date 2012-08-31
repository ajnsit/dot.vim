" vim: set ff=unix ft=vim fenc=utf-8:

" Automatically generate tags for C files
au BufWritePost *.c             silent !ctags %
au BufWritePost *.h             silent !ctags %

