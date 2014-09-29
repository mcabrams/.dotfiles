" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr
" 'c' - the directory of the current file.
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 30000
let g:ctrlp_reuse_window  = 1
