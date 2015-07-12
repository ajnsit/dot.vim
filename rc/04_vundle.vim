" vim: set ff=unix ft=vim fenc=utf-8:

" Disable filetype detection
" Automatically called by neobundle#rc
" filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/

  " Required
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

" Let NeoBundle manage NeoBundle
" Required
NeoBundleFetch 'Shougo/neobundle.vim'

" It's recommended to install vimproc
" After install, run: make -f make_unix.mak
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin'  : 'make -f make_cygwin.mak',
      \     'mac'     : 'make -f make_mac.mak',
      \     'unix'    : 'make -f make_unix.mak',
      \    },
      \ }

" My Bundles

" File management --------------------------------------------------------------
NeoBundle 'scrooloose/nerdtree'    " File explorer. E.g. <leader>d and <leader>r
NeoBundle 'kien/ctrlp.vim'         " Fuzzy file finder. E.g. <Ctrl>p
NeoBundle 'mru.vim'                " Most recently used file list. E.g. :MRU aliased to :rf

" Buffer management ------------------------------------------------------------
NeoBundle 'moll/vim-bbye'          " Close buffer without messing layout with :Bdelete

" GIT --------------------------------------------------------------------------
NeoBundle 'tpope/vim-fugitive'
" Wrapper for fugitive. Emulates TIG (http://jonas.nitro.dk/tig/). Example - :Extradite
NeoBundle 'int3/vim-extradite'

" Programming ------------------------------------------------------------------
" NeoBundle 'jgdavey/tslime.vim'       " Slime Mode
NeoBundle 'scrooloose/syntastic'     " Quick type checking
NeoBundle 'majutsushi/tagbar'        " Tags explorer. E.g. <F8>
" Neocomplete doesn't work with neovim yet (due to if_lua). Use neocomplcache instead
" NeoBundle 'Shougo/neocomplete'       " Auto completion <Ctrl><Space>
NeoBundle 'Shougo/neocomplcache'

" Haskell specific
NeoBundle 'dag/vim2hs'               " Better syntax highlighting, hlint, ultisnips, tabularize support
NeoBundle 'bitc/lushtags'            " Automatic tags for haskell files (needs tagbar)
" https://github.com/dan-t/hdevtools
NeoBundle 'bitc/vim-hdevtools'       " hdevtools integration
NeoBundle 'ujihisa/neco-ghc'         " Neocomplete support for Haskell
NeoBundle 'Twinside/vim-haskellFold' " Better haskell folding (better than vim2hs)


" Background stuff -------------------------------------------------------------

NeoBundle 'myusuf3/numbers.vim'    " Switch between relative and absolute line numbers based on mode
NeoBundle 'bling/vim-airline'      " Status bar
NeoBundle 'airblade/vim-gitgutter' " Show git diff markers in the gutter
NeoBundle 'mbadran/headlights'     " Bundle management menu
NeoBundle 'nathanaelkane/vim-indent-guides' " Show guides for indentation


" Motion and Text --------------------------------------------------------------

NeoBundle 'ervandew/supertab'       " ??
NeoBundle 'godlygeek/tabular'       " Text alignment
NeoBundle 'matchit.zip'             " improved '%' matches
NeoBundle 'argtextobj.vim'          " Text objects for arguments ('a')
NeoBundle 'kana/vim-textobj-indent' " Text objects by indentation ('i')
NeoBundle 'kana/vim-textobj-user'   " Define your own text objs
NeoBundle 'Lokaltog/vim-easymotion' " <leader><leader>w or <leader><leader>b etc.
NeoBundle 'tpope/vim-surround'      " Manipulate 'surrounding' characters, ds<char>, cs<char><char>, ys<obj><char>
NeoBundle 'bkad/CamelCaseMotion'    " Move within camel-cased and underscored words, <leader>w <leader>b <leader>e

" Important - indentation based text object
" Example - <count>ai (A)n (I)ndentation level and line above.
NeoBundle 'michaeljsmith/vim-indent-object'

" Haskell
NeoBundle 'Twinside/vim-hoogle'      " Hoogle
NeoBundle 'eagletmt/ghcmod-vim'      " GHCMod integration
NeoBundle 'eagletmt/neco-ghc'        " NECO GHC ???
NeoBundle 'raichoo/haskell-vim' " Better haskell highlighting, indentation, and cabal support
NeoBundle 'enomsg/vim-haskellConcealPlus' " Unicode haskell

NeoBundle 'pbrisbin/vim-syntax-shakespeare'

" UNDO Visualisation
" Use the following keybinding - nnoremap <F5> :GundoToggle<CR>
NeoBundle 'sjl/gundo.vim'

" Required
call neobundle#end()

" required: Re-enable file type detection
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleSearch(!) foo - search(or refresh cache first) for foo
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h neobundle for more details or wiki for FAQ

