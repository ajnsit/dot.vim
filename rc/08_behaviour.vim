" vim: set ff=unix ft=vim fenc=utf-8:

" Syntax highlighting on
syntax on

" Enable file type detection
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
" filetype plugin indent on

" IMPORTANT! Map semicolon to colon
nmap ; :

" Use Shift-Enter instead of Esc
" I almost never use it. But it doesn't harm anything
imap <S-CR> <Esc>

" Set the <leader> key (,)
let mapleader=","

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Keep centralised backups
set backupdir=~/.vimswaps,/tmp
set directory=~/.vimswaps,/tmp
set backup

" Ignore the following files (tab completion, directory browsing etc.)
set wildignore=*.swp,*.bak,*.pyc,*.pyo,*.exe,*.pdb,*.obj,*.o,*.hi,*~

" Show a mini explorer window on tab completion in minibuffer
set wildmenu

" Modified files and history
set undolevels=1000 " Set 1000 levels of undo
set history=50      " keep 50 lines of command line history
set hidden          " Allow modified buffers to be hidden

" Editing options
set smartindent                " (si) enable smart indentation
set expandtab                  " (et) expand tabs to spaces (use :retab to redo entire file)
set showmatch                  " (sm) briefly jump to matching bracket when inserting one
set autoindent                 " (ai) turn on auto-indenting (great for programers)
set copyindent                 " (ci) when auto-indenting, use the indenting format of the previous line
set tabstop=2                  " (ts) width (in spaces) that a <tab> is displayed as
set softtabstop=2              " (sts) makes spaces feel like tabs (like deleting)
set shiftwidth=2               " (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)
set smarttab                   " (sta) 'shiftwidth' used in front of a line, but 'tabstop' used otherwise
set textwidth=80               " (tw) number of columns before an automatic line break is inserted (see formatoptions)
set formatoptions=croq         " (fo) influences how vim automatically formats text
set backspace=indent,eol,start " (bs) allows backspacing beyond starting point of insert mode, indents and line breaks
set nrformats+=alpha           " (nf) adds alpha chars to list that gets incremented/decremented with ^A/^X
set listchars+=tab:>-          " (lcs) strings used in 'list' mode to show hidden characters (default=eol:$)
set listchars+=trail:-         " ditto
set winminheight=0             " (wmh) the minimal height of the window when it's not the current window

" Horizontal scrolling
"set nowrap                     " allows text to continue off the window (need horizontal scrolling)
set linebreak                   " (lbr) wrap long lines at a space instead of in the middle of a word
set sidescroll=5                " (ss) the minimal number of columns to scroll horizontally
set listchars+=precedes:<       " (lcs) when 'nowrap', character to indicate that line continues off the page
set listchars+=extends:>        " ditto

" Keep cursor on the center of the buffer
set scrolloff=999

" Use System clipboard by default
set clipboard=unnamedplus

" Search options
set wrapscan                    " (ws) allows search to wrap to top of document when the bottom has been hit
set incsearch                   " (is) highlights what you are searching for as you type
set hlsearch                    " (hls) highlights all instances of the last searched string
set ignorecase                  " (ic) ignores case in search patterns
set smartcase                   " (scs) don't ignore case when the search pattern has uppercase
set infercase                   " (inf) during keyword completion, fix case of new word (when ignore case is on)

" Persistent Undo! New in VIM 7.3
" Remembers each file's undo buffer even after you close the file
set undofile
let &undodir = $PL_VIM_PATH . '/undo'

" file format, try unix first, then dos
set fileformats=unix,dos

" Autosave files when focus is lost
autocmd FocusLost * silent! wa

" Added cabal bin dir to vim path
let $PATH = $PATH . ':' . expand("~/.cabal/bin")

" before writing to any file, this function call will remove any extra white space at the end of a line
" autocmd BufWritePre,FileWritePre * :%s/\s\+$//e

" omnicomplete
set ofu=syntaxcomplete#Complete

" The ':%TOhtml' command generates html without <font> tags
let html_use_css = 1

" allow tilde (~) to act as an operator -- ~w, etc.
set tildeop

" Don't use Ex mode, use Q for formatting
map Q gq

" Look in the current directory for "tags", and work up the tree towards root until one is found.
"  In other words, you can be anywhere in your source tree instead of just the root of it.
set tags=./tags;/

" Always use bash in interactive mode (so it reads my .bashrc file)
set shell=/bin/bash\ -i

