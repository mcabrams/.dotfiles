" test node tests, run from file in directory with test.js
autocmd FileType javascript nmap <leader>tn :Tmux node test.js<CR>


" test python file, run from file
autocmd FileType python nmap <leader>t :exe ":Tmux python3.4 ".expand('%:t')<CR>
