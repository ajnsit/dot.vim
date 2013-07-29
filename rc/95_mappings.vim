" vim: set ff=unix ft=vim fenc=utf-8:

" Set shortcuts to navigate around the split panes
" Ctrl [h/l] simply switches to left/right split
nmap <silent> <C-H> :wincmd h<CR>
nmap <silent> <C-L> :wincmd l<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-k> :wincmd k<CR>

" However, moving between horizontally split windows is special
" We make this much faster and intuitive
" Ctrl J now expands the below pane and switches to it
" Ctrl K does the same for above window
" map <C-H> <C-W>h<C-W>|
" map <C-L> <C-W>l<C-W>|
" map <C-J> <C-W>j<C-W>_
" map <C-K> <C-W>k<C-W>_

" <F2> applies a rot13 dmca-grade encryption scheme to your file
" Clashes with hdevtools
" map <F2> mzggg?G`z      "(seems to be faster than mzggVGg?`z)

" <F3> appends the current date and time after the cursor
map  <F3> a<C-R>=strftime("%c")<CR><Esc>
imap <F3>  <C-R>=strftime("%c")<CR>

" <F4> Open bufferlist
map <silent> <F4> :call BufferList()<CR>

" <F6> sorts a paragraph of numbers using the external 'sort' program
map <F6> {V}k:!sort<CR>

" <F7> toggles hidden characters
map  <F7> :set list!<CR>
imap <F7> <ESC>:set list!<CR>a

" Vim Tagbar integration
" <F8> summons tagbar
nmap <F8> :TagbarToggle<CR>

" <F9> toggles word wrap
map  <F9> :set wrap!<CR>
imap <F9> <ESC>:set wrap!<CR>a

" DISABLE arrow keys!!
"	Map Right/Left keys to navigate buffers
"	Leave the Up/Down keys as is as they are useful in buffers
map <right> :bn<cr>
map <left> :bp<cr>

" map j to gj and k to gk, so line navigation ignores line wrap
nmap j gj
nmap k gk

" Tags browsing
" C-\ - Open the definition in a new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" A-] - Open the definition in a vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Unset the "last search pattern" register by hitting just return
nnoremap <CR> :noh<CR><CR>

" Modify . behaviour to also reset the cursor to original position
" similarly use alt-. to quickly make changes to successive lines
" as explained in http://vim.wikia.com/wiki/VimTip1142
nmap . .`[
map <a-.> `[<Down>.

" Modify (:cdd) to autochange current directory to the current file path
cnoreabbrev cdd cd %:p:h<CR>:pwd<CR>

" Set :df/:de shortcuts to quickly (de)activate vimdiff
cnoreabbrev df diffthis
cnoreabbrev de diffoff


