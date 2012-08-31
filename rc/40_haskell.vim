" vim: set ff=unix ft=vim fenc=utf-8:

" use ghc as the compiler for haskell files
" This is only needed for haskellmode (we don't use it anymore)
" au Bufenter *.hs compiler ghc

" Enable Neocomplcache code completion
let g:neocomplcache_enable_at_startup = 1

" Better Haskell code completion using Neocomplcache, neco-ghc, and ghc-mod
" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" Use neocomplcache.
" let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" Path to haddock browser
let g:haddock_browser = "/usr/bin/firefox"

" Automatically generate tags for haskell files
" (using fast-tags - http://hackage.haskell.org/package/fast-tags)
" Fast tags generates tags incrementally, so the compilation should be
" unnoticable
au BufWritePost *.hs            silent !/home/aj/bin/init-tags %
au BufWritePost *.hsc           silent !/home/aj/bin/init-tags %

" Hoogle shortcuts
au BufNewFile,BufRead *.hs map <buffer> <F1>   :Hoogle
au BufNewFile,BufRead *.hs map <buffer> <C-F1> :HoogleClose<CR>
au BufNewFile,BufRead *.hs map <buffer> <S-F1> :HoogleLine<CR>

" Function to switch to the enclosing haskell project's root folder
" The root folder is defined by the presence of either a .cabal file
" OR by the presence of a Setup.[l]hs file.
function! HaskellPackageRoot()
  let s:origdir = expand('%:h')
  let s:filedir = s:origdir
  let s:found = 0
  while 1
    if s:filedir == '/' || s:filedir == '.'
      break
    endif
    if empty(glob(s:filedir . '/*.cabal')) && !filereadable(s:filedir . '/Setup.hs')
      let s:filedir = fnamemodify(s:filedir, ':h')
    else
      let s:found = 1
      break
    endif
  endwhile
  if s:found
    exec 'cd' fnameescape(s:filedir)
  else
    exec 'cd' fnameescape(s:origdir)
  endif
endfunction

" Automatically switch to the root dir on opening a haskell file
au BufNewFile,BufRead *.hs,*.hsc,*.cabal,*.lhs call HaskellPackageRoot()

" Run Haskell Lint on file write
autocmd BufWritePost *.hs GhcModCheckAndLintAsync


