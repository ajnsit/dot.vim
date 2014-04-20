" vim: set ff=unix ft=vim fenc=utf-8:

" Delete fugitive buffers on hide
autocmd BufReadPost fugitive://* set bufhidden=delete

" Don't setup any default key mappings for vim-gitgutter
let g:gitgutter_map_keys = 0

" Moving from change to change
nmap <leader>cc <Plug>GitGutterNextHunk
nmap <leader>cp <Plug>GitGutterPrevHunk

" Stage/Unstage a change
nmap <Leader>cs <Plug>GitGutterStageHunk
nmap <Leader>cu <Plug>GitGutterRevertHunk

