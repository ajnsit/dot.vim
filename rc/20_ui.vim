" vim: set ff=unix ft=vim fenc=utf-8:

" Color scheme and font
set guifont=Monaco\ 10
" Jellybeans and Molokai are the two best schemes
" For Molokai, use the original (gray-brown) background
let g:molokai_original = 1
" colorscheme jellybeans
colorscheme molokai

" Make sure you are using 256 colors even in the terminal vim
set t_Co=256


" Intelligent highlighting of trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red           " Red background
au ColorScheme * highlight ExtraWhitespace guibg=red      " Prevent themes from overriding this setting
au BufEnter    * match     ExtraWhitespace /\s\+$/        " Highlight on buffer load
au InsertEnter * match     ExtraWhitespace /\s\+\%#\@<!$/ " Stop highlighting on entering insert mode
au InsertLeave * match     ExtraWhiteSpace /\s\+$/        " Highlight again on exiting insert mode


" Set a slightly larger window size on startup
set lines=60
set columns=120

" UI options
set guioptions+=TlrLbm  " (go) Hide toolbar, scrollbar etc.
set guioptions-=TlrLbm  " (go) Hide toolbar, scrollbar etc.
set cursorline          " Highlight current line
set ruler               " show the cursor position all the time
set laststatus=2        " Always show the statusline
set showcmd             " display incomplete commands
set number              " show line numbers
" TODO: Figure out why visual bell freezes Vim for a few seconds on this machine (Vaio)
" set visualbell          " use a visual bell

" Set the color of the current line
hi CursorLine term=none cterm=none ctermbg=3

" Make Vim consider the entire buffer up to the cursor to determine the highlighting
" Gets rid of the syntax highlighting lag and bugs when browsing Haskell code, at the cost of performance
syn sync fromstart

" Disable all blinking
" set guicursor+=a:blinkon0
" Set a low blinking rate which is not distracting and yet helps locate the
" cursor when invoking a cursor jump (such as search)
set guicursor+=a:blinkwait3000 " Wait 3 sec before the first blink
set guicursor+=a:blinkon4500   " Wait 4.5 sec for each subsequent blink
set guicursor+=a:blinkoff500   " The cursor is invisible 10% of the time

" Set tab title to just the filename
set guitablabel=%t

