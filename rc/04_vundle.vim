" vim: set ff=unix ft=vim fenc=utf-8:

" Disable filetype detection
" Automatically called by neobundle#rc
" filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
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

" UI
" NeoBundle 'Lokaltog/vim-powerline'  " Status bar
NeoBundle 'bling/vim-airline'  " Status bar
" Disabled headlights as I disable the menubar altogether
NeoBundle 'mbadran/headlights'      " Bundle management menu
NeoBundle 'myusuf3/numbers.vim'     " Switch between relative and absolute line numbers based on mode

" Source control
NeoBundle 'tpope/vim-fugitive'      " Git integration

" Motion
NeoBundle 'matchit.zip'             " improved '%' matches
NeoBundle 'argtextobj.vim'          " Text objects for arguments ('a')
NeoBundle 'kana/vim-textobj-indent' " Text objects by indentation ('i')
NeoBundle 'kana/vim-textobj-user'   " Define your own text objs
NeoBundle 'Lokaltog/vim-easymotion' " <leader><leader>w or <leader><leader>b etc.
NeoBundle 'godlygeek/tabular'       " Text alignment
NeoBundle 'tpope/vim-surround'      " Manipulate 'surrounding' characters, ds<char>, cs<char><char>, ys<obj><char>
NeoBundle 'bkad/CamelCaseMotion'    " Move within camel-cased and underscored words, <leader>w <leader>b <leader>e

" External commands
NeoBundle 'rosenfeld/conque-term'     " Terminal integration

" Explorers
NeoBundle 'mru.vim'                   " Most recently used file list. E.g. :MRU aliased to :rf
NeoBundle 'scrooloose/nerdtree'       " File explorer. E.g. <leader>d and <leader>r
NeoBundle 'kien/ctrlp.vim'            " Fuzzy file finder. E.g. <Ctrl>p
NeoBundle 'majutsushi/tagbar'         " Tags explorer. E.g. <F8>
NeoBundle 'sjbach/lusty'              " Filesystem and Buffer explorer. E.g. <leader>lf <leader>lb
NeoBundle 'roblillack/vim-bufferlist' " Display buffers, <F4>
NeoBundle 'Shougo/vimfiler.vim'       " A File manager
NeoBundle 'bufexplorer.zip'           " Buffer explorer
NeoBundle 'Shougo/unite.vim'          " Unite output from various sources in one buffer

" Tools
NeoBundle 'hexman.vim'                " Hex editing

" Shortcuts
NeoBundle 'SirVer/ultisnips'       " Snippets, <Ctrl><Tab>
NeoBundle 'Shougo/neocomplcache'   " Auto completion <Ctrl><Space>
NeoBundle 'tomtom/tinykeymap_vim'  " Temporary modes for window/tabs/buffers/diffs etc.
" NeoBundle 'Valloric/YouCompleteMe' " Auto completion <Ctrl><Space>

" Syntax and type checking
NeoBundle 'scrooloose/syntastic'     " Quick type checking
NeoBundle 'ajnsit/JavaScript-syntax' " JS better syntax highlighting and folding
" Tern requires python support
NeoBundle 'marijnh/tern_for_vim'     " Tern code analysis for JS

" Haskell
NeoBundle 'dag/vim2hs'               " Better syntax highlighting, hlint, ultisnips, tabularize support
NeoBundle 'Twinside/vim-haskellConceal' " Unicode haskell
NeoBundle 'ujihisa/neco-ghc'         " Neocomplcache support for Haskell
NeoBundle 'eagletmt/ghcmod-vim'      " GHCMod integration
NeoBundle 'bitc/vim-hdevtools'       " hdevtools integration
NeoBundle 'Twinside/vim-haskellFold' " Better haskell folding (better than vim2hs)
NeoBundle 'bitc/lushtags'            " Automatic tags for haskell files (tagbar compatible)
NeoBundle 'adinapoli/cumino'         " Vim -> Ghci communication through tmux
" Bundle 'vim-scripts/Superior-Haskell-Interaction-Mode-SHIM'      " BROKEN

" Other languages
NeoBundle 'rainux/vim-vala'          " Vala support
NeoBundle 'groenewege/vim-less'      " LessCss support
NeoBundle 'kchmck/vim-coffee-script' " Coffeescript support
NeoBundle 'cscope.vim'               " C File browsing
NeoBundle 'jsbeautify'               " JS Beautifier

" Zenroom for vim
NeoBundle 'mikewest/vimroom'

" required: Re-enable file type detection
filetype plugin indent on

"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleSearch(!) foo - search(or refresh cache first) for foo
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h neobundle for more details or wiki for FAQ

