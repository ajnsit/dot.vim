" vim: set ff=unix ft=vim fenc=utf-8:
" vim: set ff=unix ft=vim fenc=utf-8:

" Path to haddock browser
let g:haddock_browser = "/usr/bin/firefox"

" Automatically generate tags for haskell files
" (using fast-tags - http://hackage.haskell.org/package/fast-tags)
" Fast tags generates tags incrementally, so the compilation should be
" unnoticable
if executable('/home/aj/bin/init-tags')
  au BufWritePost *.hs            silent !/home/aj/bin/init-tags %
  au BufWritePost *.hsc           silent !/home/aj/bin/init-tags %
endif

" Use NecoGhc autocompletion for haskell files
" This should really not be needed as necoghc integrates with neocomplcache
" However, I disable autocompletion by default for performance reasons
" and somehow, necoghc#omnifunc is not called for manual completion
au BufNewFile,BufRead *.hs setlocal omnifunc=necoghc#omnifunc

" Function to switch to the enclosing haskell project's root folder
" The root folder is defined by the presence of either a .cabal file
" OR by the presence of a Setup.[l]hs file.
function! HaskellPackageRoot()
  let l:filedir = expand('%:h')
  let l:newdir = l:filedir
  let l:found = 0
  while 1
    " Stop if we reach the filesystem root
    if l:newdir == '/'
      break
    endif
    " Do NOTHING if the current working dir is an ancestor of the file
    if l:newdir == '.'
      return
    endif
    " Else check for the presence of a marker file
    if empty(glob(l:newdir . '/*.cabal')) && !filereadable(l:newdir . '/Setup.hs') && !filereadable(l:newdir . '/Setup.lhs')
      let l:newdir = fnamemodify(l:newdir, ':h')
    else
      let l:found = 1
      break
    endif
  endwhile
  if l:found
    " If a marker file is found, then switch to that dir
    exec 'cd' fnameescape(l:newdir)
  else
    " If no marker files found then switch to the dir of the file
    exec 'cd' fnameescape(l:filedir)
  endif
endfunction

" Automatically switch to the root dir on opening a haskell file
au BufNewFile,BufRead *.hs,*.hsc,*.cabal,*.lhs call HaskellPackageRoot()

" Run Haskell Lint on file write
" autocmd BufWritePost *.hs GhcModCheckAndLintAsync

" Treat ELM Files as Haskell Files
au! BufNewFile,BufRead *.elm set filetype=haskell

" Shortcuts for hdevtools plugin
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>



" Path to haddock browser
let g:haddock_browser = "/usr/bin/firefox"

" Automatically generate tags for haskell files
" (using fast-tags - http://hackage.haskell.org/package/fast-tags)
" Fast tags generates tags incrementally, so the compilation should be
" unnoticable
if executable('/home/aj/bin/init-tags')
  au BufWritePost *.hs            silent !/home/aj/bin/init-tags %
  au BufWritePost *.hsc           silent !/home/aj/bin/init-tags %
endif

" Use NecoGhc autocompletion for haskell files
" This should really not be needed as necoghc integrates with neocomplcache
" However, I disable autocompletion by default for performance reasons
" and somehow, necoghc#omnifunc is not called for manual completion
au BufNewFile,BufRead *.hs setlocal omnifunc=necoghc#omnifunc

" Function to switch to the enclosing haskell project's root folder
" The root folder is defined by the presence of either a .cabal file
" OR by the presence of a Setup.[l]hs file.
function! HaskellPackageRoot()
  let l:filedir = expand('%:h')
  let l:newdir = l:filedir
  let l:found = 0
  while 1
    " Stop if we reach the filesystem root
    if l:newdir == '/'
      break
    endif
    " Do NOTHING if the current working dir is an ancestor of the file
    if l:newdir == '.'
      return
    endif
    " Else check for the presence of a marker file
    if empty(glob(l:newdir . '/*.cabal')) && !filereadable(l:newdir . '/Setup.hs') && !filereadable(l:newdir . '/Setup.lhs')
      let l:newdir = fnamemodify(l:newdir, ':h')
    else
      let l:found = 1
      break
    endif
  endwhile
  if l:found
    " If a marker file is found, then switch to that dir
    exec 'cd' fnameescape(l:newdir)
  else
    " If no marker files found then switch to the dir of the file
    exec 'cd' fnameescape(l:filedir)
  endif
endfunction

" Automatically switch to the root dir on opening a haskell file
au BufNewFile,BufRead *.hs,*.hsc,*.cabal,*.lhs call HaskellPackageRoot()

" Run Haskell Lint on file write
" autocmd BufWritePost *.hs GhcModCheckAndLintAsync

" Treat ELM Files as Haskell Files
au! BufNewFile,BufRead *.elm set filetype=haskell

" Shortcuts for hdevtools plugin
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>


