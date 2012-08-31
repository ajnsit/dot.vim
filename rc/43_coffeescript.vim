" vim: set ff=unix ft=vim fenc=utf-8:

" Coffeescript integration options
" Set the coffee compile buffer to split vertically by default:
let coffee_compile_vert = 1
" Enable the coffee compiler (invoke with CoffeeMake)
au BufNewFile,BufRead *.coffee compiler coffee
" Automatically recompile a coffee file when it's written
au BufWritePost *.coffee silent CoffeeMake!

