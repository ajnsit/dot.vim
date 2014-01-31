" vim: set ff=unix ft=vim fenc=utf-8:

" 50 onwards is bundle specific configurations
" Put any misc bundle configuration in this file

" CTRLP config

" Start searching from haskell roots
let g:ctrlp_root_markers = ['*.cabal', 'Gruntfile.js', 'package.json']

" Custom ignore directories
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn|tmp)|node_modules|bower_components)$'


