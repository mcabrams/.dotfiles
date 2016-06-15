let g:startify_custom_header = [
 \ '                                   /$$',
 \ '                                  | $$',
 \ ' /$$$$$$/$$$$   /$$$$$$$  /$$$$$$ | $$$$$$$   /$$$$$$  /$$$$$$  /$$$$$$/$$$$   /$$$$$$$',
 \ '| $$_  $$_  $$ /$$_____/ |____  $$| $$__  $$ /$$__  $$|____  $$| $$_  $$_  $$ /$$_____/',
 \ '| $$ \ $$ \ $$| $$        /$$$$$$$| $$  \ $$| $$  \__/ /$$$$$$$| $$ \ $$ \ $$|  $$$$$$',
 \ '| $$ | $$ | $$| $$       /$$__  $$| $$  | $$| $$      /$$__  $$| $$ | $$ | $$ \____  $$',
 \ '| $$ | $$ | $$|  $$$$$$$|  $$$$$$$| $$$$$$$/| $$     |  $$$$$$$| $$ | $$ | $$ /$$$$$$$/',
 \ '|__/ |__/ |__/ \_______/ \_______/|_______/ |__/      \_______/|__/ |__/ |__/|_______/',
 \ '',
 \ '',
 \ ]

hi StartifyHeader  ctermfg=red
hi StartifyHeader  guifg=#EBCB8B

let g:startify_session_dir = '~/.vim/session'
let g:startify_list_order = [
      \ ['   My most recently used files:'],
      \ 'files',
      \ ['   My most recently used files in the current directory:'],
      \ 'dir',
      \ ['   These are my sessions:'],
      \ 'sessions',
      \ ['   These are my bookmarks:'],
      \ 'bookmarks',
      \ ]


let g:startify_skiplist = [
           \ 'COMMIT_EDITMSG',
           \ $VIMRUNTIME .'/doc',
           \ 'bundle/.*/doc',
           \ 'LC_MESSAGES/*',
           \ '\.DS_Store'
           \ ]

