" vim: set ff=unix ft=vim fenc=utf-8:

" HACKY: This command will convert any line of text into an HTML block comment
au BufNewFile,BufRead *.html,*.htm map <leader>c ^i<!-- <ESC>A --><ESC>yypllll<C-V>$hhhhr-yykP

