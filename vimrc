" vim: set ff=unix ft=vim fenc=utf-8:
scriptencoding utf-8

" When started as "evim", don't use the below settings. You wanted notepad? You got it!
" But seriously, most of the settings below probably don't apply.
if v:progname =~? "evim"
  finish
endif

" remove all autocommands
autocmd!

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible




" LOADING SUB CONFIGURATION FILES
" ---------------------------------------------

" local variables and runtime path
" Get the root directory where vimrc resides **resolving all the symlinks**
let s:this_path     = fnamemodify(resolve(expand('<sfile>')), ":h")
let s:bundle_path   = s:this_path . '/bundle'
let s:rc_path       = s:this_path . '/rc'

let $PL_VIM_PATH    = s:this_path
let $PL_VIMRC       = expand('<sfile>:p')
let $PL_BUNDLE_PATH = s:bundle_path

" Execute sub configuration files
let s:rc_files = split(glob(s:rc_path.'/*.vim'), '\n')
for rc_file in s:rc_files
    exec 'source '.rc_file
    unlet rc_file
endfor




" SECURE
" ----------------------------------------------

" Don't allow unsecure commands in project specific vim config files
set secure



" --------------------------------------------------------
" NOTE: There should be nothing below this except comments
" --------------------------------------------------------



" Command Reference
" ------------------------------------------------------------

" *                     - searches for word under cursor
" gd                    - finds definition of variable/function under cursor
" ga                    - prints the ascii value of character under cursor
" gf                    - opens file under the cursor (in split view)
" gi                    - goes to insert mode in the same spot as you last inserted
" ~                     - changes case of character
" :r !<cmd>             - reads the output of the shell <cmd> into the file
" :% s/hello/A/gc       - typical search and replace command

" :% !tidy              - runs the code through the 'tidy' program

" :runtime! syntax/2html.vim
" :10,40TOhtml

" command reference ->  " za : fold toggle  toggles between a fold being opened and closed (zA does it recursively)
"                       " zc : fold close   close 1 fold under the cursor (zC does it recursively)
                        " zo : fold open    open 1 fold under the cursor (zO does it recursively)
                        " zm : fold more    increases foldlevel by 1 (zM opens all folds)
                        " zr : fold reduce  decreses foldlevel by 1 (zR closes all folds)

" :retab                - when expandtab is set, replace all tabs in the file with the # of spaces defined in 'shiftwidth'
" :retab!               - when expandtab is not set, replace the number of spaces in 'shiftwidth' with a tab


