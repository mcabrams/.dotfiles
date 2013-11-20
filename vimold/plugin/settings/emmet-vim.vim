let g:user_emmet_expandabbr_key = "<c-y>y,"
imap <C-Y>, <c-o>:call <SID>CallEmmet("EmmetExpandAbbr")<CR>
nmap <C-Y>, :call emmet#expandAbbr(3,"")<cr>
vmap <C-Y>, :call emmet#expandAbbr(2,"")<cr>
function! s:CallEmmet(plug)
  call feedkeys("\<plug>(".a:plug.")")
endfunction
