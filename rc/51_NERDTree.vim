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
" Don't show line numbers in the NERDTree window.
let NERDTreeShowLineNumbers=0
" Use arrows rather than pipes and +/~ chars.
let NERDTreeDirArrows=1
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



""""""""""""""""""""
""" Special Commands
""""""""""""""""""""
""" Taken from - https://github.com/duwanis/vim_config/blob/master/home/.vim/config/nerdtree.vim
""""""""""""""""""""
"" Borrowed liberally from the Janus configs.

" NERDTree utility function
function! s:UpdateNERDTree(...)
  let stay = 0

  if(exists("a:1"))
    let stay = a:1
  end

  if exists("t:NERDTreeBufName")
    let nr = bufwinnr(t:NERDTreeBufName)
    if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<CR>", "", "")
      if !stay
        wincmd p
      end
    endif
  endif

  if exists(":ClearCtrlPCache") == 2
    ClearCtrlPCache
  endif
endfunction

" Utility functions to create file commands
function! s:CommandCabbr(abbreviation, expansion)
  execute 'cabbrev ' . a:abbreviation . ' <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "' . a:expansion . '" : "' . a:abbreviation . '"<CR>'
endfunction

function! s:FileCommand(name, ...)
  if exists("a:1")
    let funcname = a:1
  else
    let funcname = a:name
  endif

  execute 'command! -nargs=1 -complete=file ' . a:name . ' :call ' . funcname . '(<f-args>)'
endfunction

function! s:DefineCommand(name, destination)
  call s:FileCommand(a:destination)
  call s:CommandCabbr(a:name, a:destination)
endfunction

" Public NERDTree-aware versions of builtin functions
function! ChangeDirectory(dir, ...)
  execute "cd " . fnameescape(a:dir)
  let stay = exists("a:1") ? a:1 : 1

  NERDTree

  if !stay
    wincmd p
  endif
endfunction

function! Touch(file)
  execute "!touch " . shellescape(a:file, 1)
  call s:UpdateNERDTree()
endfunction

function! Remove(file)
  let current_path = expand("%")
  let removed_path = fnamemodify(a:file, ":p")

  if (current_path == removed_path) && (getbufvar("%", "&modified"))
    echo "You are trying to remove the file you are editing. Please close the buffer first."
  else
    execute "!rm " . shellescape(a:file, 1)
  endif

  call s:UpdateNERDTree()
endfunction

function! Mkdir(file)
  execute "!mkdir " . shellescape(a:file, 1)
  call s:UpdateNERDTree()
endfunction

" Define the NERDTree-aware aliases
call s:DefineCommand("cd", "ChangeDirectory")
call s:DefineCommand("touch", "Touch")
call s:DefineCommand("rm", "Remove")
call s:DefineCommand("mkdir", "Mkdir")

