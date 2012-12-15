" vim: set ff=unix ft=vim fenc=utf-8:

" Renames param1 tags to be param2 tags
function! RenameTag(param1, param2)
    :%s/<\(\/\?\)a:param1\(\_s*\)/<\1a:param2\2/gci
endfunction

" Strips the tag defined by the parameter (for html pages)
function! StripTag(TagName)
    :%s/a:TagName/hello/gci
    ":% s/<[^>]\+>//gci
endfunction

" Reverses all the lines in the file (top to bottom)
function! ReverseLines()
    :g/^/m0
endfunction

" Removes the ^M character from the end of every line
function! RemoveM()
    :%s/$//g
endfunction

" Replaces the ^M character with a carraige return native to the system
function! ReplaceM()
    :%s//\r/g
endfunction

" Removes superfluous white space from the end of a line
function! RemoveWhiteSpace()
    :%s/\s*$//g
    :'^
    "`.
endfunction

" In VIM user defined commands MUST start with a capital letter
" (that's why "Bdi" and not "bdi")
" Bdi : Buffers: Delete *Inactive*
function! DeleteInactiveBufs()
  "From tabpagebuflist() help, get a list of all buffers in all tabs
  let tablist = []
  for i in range(tabpagenr('$'))
    call extend(tablist, tabpagebuflist(i + 1))
  endfor

  "Below originally inspired by Hara Krishna Dara and Keith Roberts
  "http://tech.groups.yahoo.com/group/vim/message/56425
  let nWipeouts = 0
  for i in range(1, bufnr('$'))
    if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
    "bufno exists AND isn't modified AND isn't in the list of buffers open in windows and tabs
      silent exec 'bwipeout' i
      let nWipeouts = nWipeouts + 1
    endif
  endfor
  echomsg nWipeouts . ' buffer(s) wiped out'
endfunction
command! Bdi :call DeleteInactiveBufs()

function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction


