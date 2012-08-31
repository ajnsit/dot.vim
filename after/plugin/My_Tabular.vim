" vim: set ff=unix ft=vim fenc=utf-8:

" Exit if Tabular plugin isn't loaded
if !exists(':Tabularize')
  finish
endif


" Some common but complex tabular patterns

" Align cabal file columns
AddTabularPattern! cabal /\(^[^:]*:[ ]*\|^[ ]\+\)\zs./l0


