let g:startify_custom_header = [
 \ '   _______  __  __  ______  ___   ___  ________  ______   ______  ______',
 \ ' /_______/\/_/\/_/\/_____/\/___/\/__/\/_______/\/_____/\ /_____/\/_____/\',
 \ ' \::: _  \ \:\ \:\ \:::__\/\::.\ \\ \ \::: _  \ \:::_ \ \\:::_ \ \:::_ \ \',
 \ '  \::(_)  \/\:\ \:\ \:\ \  _\:: \/_) \ \::(_)  \ \:(_) ) )\:\ \ \ \:\ \ \ \',
 \ '   \::  _  \ \:\ \:\ \:\ \/_/\:. __  ( (\:: __  \ \: __ `\ \:\ \ \ \:\ \ \ \',
 \ '    \::(_)  \ \:\_\:\ \:\_\ \ \: \ )  \ \\:.\ \  \ \ \ `\ \ \:\_\ \ \:\_\ \ \',
 \ '     \_______\/\_____\/\_____\/\__\/\__\/ \__\/\__\/\_\/ \_\/\_____\/\_____\/',
 \ '',
 \ '',
 \ ]

hi StartifyHeader  ctermfg=red
hi StartifyHeader  guifg=#F1266F

let g:startify_session_dir = '~/.vim/session'
let g:startify_list_order = ['files', 'dir', 'bookmarks', 'sessions']

let g:startify_skiplist = [
           \ 'COMMIT_EDITMSG',
           \ $VIMRUNTIME .'/doc',
           \ 'bundle/.*/doc',
           \ '\.DS_Store'
           \ ]
