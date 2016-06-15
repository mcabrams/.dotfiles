" Let Vim walk up directory hierarchy from CWD to root looking for tags file
set tags=tags;/

" Tell EasyTags to use the tags file found by Vim
let g:easytags_dynamic_files = 1

" Tell EasyTags to use ctags available via brew
let g:easytags_cmd = '/usr/local/bin/ctags'
