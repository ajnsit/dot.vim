" vim: set ff=unix ft=vim fenc=utf-8:

" (dict) dictionary used for keyword completion
" to use: while in insertion mode and in the middle of a word, type <ctrl-n> and <ctrl-p>
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set complete-=k complete+=k

" (tsr) thesaurus used for keyword completion
" to use: while in insertion mode and at the BEGINNING of a word, type <ctrl-x> then <ctrl-n>
"set thesaurus-=/usr/share/dict/mobythes.aur thesaurus+=/usr/share/dict/mobythes.aur
"set complete-=k complete+=k
"
