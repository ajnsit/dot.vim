" vim: set ff=unix ft=vim fenc=utf-8:

"" JS

"" HTML

" HACKY: This command will convert any line of text into an HTML block comment
au BufNewFile,BufRead *.html,*.htm map <leader>c ^i<!-- <ESC>A --><ESC>yypllll<C-V>$hhhhr-yykP

"" Coffeescript

" Set the coffee compile buffer to split vertically by default:
let coffee_compile_vert = 1
" Enable the coffee compiler (invoke with CoffeeMake)
au BufNewFile,BufRead *.coffee compiler coffee
" Automatically recompile a coffee file when it's written
au BufWritePost *.coffee silent CoffeeMake!


"" RAML (http://raml.org/) Files are YAML Files
au BufNewFile,BufRead *.raml set syntax=yaml

