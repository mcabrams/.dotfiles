" Set prev completion keylist to up key just so no longer using shift-tab
" which conflicted with delimitmate jump through delimiter
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_filetype_blacklist = {
      \ 'notes' : 1,
      \ 'text' : 1,
      \ 'unite' : 1,
      \}
