" vim: set ff=unix ft=vim fenc=utf-8:

" Define specific options for some file types
au FileType html call MyHTMLAbbrevs()
au FileType php  call MyPHPAbbrevs()
au FileType c    call MyCAbbrevs()

" HTML abbreviations
function MyHTMLAbbrevs()
  iab <buffer> <a  <a href=""></a><left><left><left><left><left>
  iab <buffer> <i  <img src="" /><left><left><left>
  iab <buffer> l"  &ldquo;&rdquo;<left><left><left><left><left><left>
  iab <buffer> r"  &rdquo;
  iab <buffer> l'  &lsquo;
  iab <buffer> r'  &rsquo;
  iab <buffer> ""  &quot;&quot;<left><left><left><left><left>
endfunction

" PHP abbreviations
function MyPHPAbbrevs()
  iab <buffer> <?  <?php?><left><left>
endfunction

" C abbreviations
function MyCAbbrevs()
  iab <buffer> #i  #include
  iab <buffer> #d  #define
endfunction

