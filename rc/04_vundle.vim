" vim: set ff=unix ft=vim fenc=utf-8:

" Disable filetype detection
" Required before loading Vundle!
filetype off

" Set runtimepath and initialise vundle
let &rtp=&rtp.','.$PL_BUNDLE_PATH.'/vundle/'
call vundle#rc()

" required: let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles

" Github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'rosenfeld/conque-term'
Bundle 'mbadran/headlights'
Bundle 'sjbach/lusty'
Bundle 'ujihisa/neco-ghc'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdtree'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'SirVer/ultisnips'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'roblillack/vim-bufferlist'

" Haskell stuff
Bundle 'dag/vim2hs'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'bitc/vim-hdevtools'
Bundle 'Shougo/vimproc'
Bundle 'scrooloose/syntastic'
Bundle 'Twinside/vim-haskellFold'
Bundle 'pbrisbin/html-template-syntax'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-indent'
Bundle 'Twinside/vim-hoogle'
Bundle 'vim-scripts/Superior-Haskell-Interaction-Mode-SHIM'

" Vimscripts
Bundle 'argtextobj'
Bundle 'bufexplorer.zip'
Bundle 'mru.vim'
Bundle 'jsbeautify'
Bundle 'hexman.vim'
Bundle 'ack.vim'
Bundle 'cscope.vim'

" These plugins come with VIM but are not enabled by default
" However manual installation sucks! So I install them from vim-scripts
Bundle 'matchit.zip'

" required: Re-enable file type detection
filetype plugin indent on

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

