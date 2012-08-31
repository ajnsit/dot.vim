" vim: set ff=unix ft=vim fenc=utf-8:

" Toggle NERDTree using ,d
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
" Find the current buffer in NERDTree using ,r
map <leader>r :NERDTreeFind<cr>

" Always open NERDTree on the right side
let g:NERDTreeWinPos = "right"
" Current directory will always be synced to NERDTree
let NERDTreeChDirMode=2
" NerdTree window will not show the bookmarks list by default
let NERDTreeShowBookmarks=0
" NerdTree hide on file open
" let NERDTreeQuitOnOpen=1
" NERDTree ignores all the wildignore'd files
let NERDTreeIgnore = []
for suffix in split(&wildignore, ',')
  " Convert wildcards to regexes
  " '*.foo' -> '.*\.foo$'
  let NERDTreeIgnore += [ '.' . escape(suffix, '.~') . '$' ]
endfor
" Add any other files you need to ignore here
let NERDTreeIgnore += ['tags']

