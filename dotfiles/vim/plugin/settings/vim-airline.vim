let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'


let g:airline#extensions#branch#displayed_head_limit = 10

let g:airline_theme='base16'

if !has("gui_running")
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = '|'
  " let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline#extensions#tabline#right_sep = '|'
  " let g:airline#extensions#tabline#right_alt_sep = ''
endif

