set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'


"!=!=!= BUNDLES =!=!=

" === Alignment =====

Bundle 'Align'
Bundle 'Tabular'
Bundle 'junegunn/vim-easy-align'

" === AutoClosing =====

Bundle 'closetag.vim'
Bundle 'delimitMate.vim'

" ===== Ctags =======

Bundle 'xolox/vim-easytags'
Bundle 'Tagbar'
Bundle 'vim-scripts/taglist.vim'

" ===== Git =======

Bundle 'tpope/vim-fugitive'

" ===== Navigation =======

Bundle 'ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'matchit.zip'
Bundle 'xolox/vim-session'
Bundle 'techlivezheng/vim-plugin-minibufexpl'
Bundle 'mileszs/ack.vim'
Bundle 'mhinz/vim-startify'
Bundle 'henrik/vim-indexed-search'
Bundle 'Lokaltog/vim-easymotion'

" ===== RubyAndRails

Bundle 'tpope/vim-rvm'
Bundle 'danchoi/ruby_bashrockets.vim'
Bundle 'tpope/vim-endwise'
Bundle 'blockle.vim'

" ===== Javascript

Bundle 'jelera/vim-javascript-syntax'
Bundle 'marijnh/tern_for_vim'
Bundle 'teramako/jscomplete-vim'
Bundle 'maksimr/vim-jsbeautify'

"Required for vim-jsbeautify
Bundle 'einars/js-beautify'

" === Node
" Bundle 'myhere/vim-nodejs-complete'
" Bundle 'guileen/vim-node'

" ===== Syntax ======

Bundle 'Haml'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'html5.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-haml'

" ===== Testing ======

Bundle 'Rubytest.vim'
Bundle 'rails.vim'

" === Theme/Colors ===

Bundle 'airblade/vim-gitgutter'
Bundle 'chrisbra/color_highlight'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'dhruvasagar/vim-railscasts-theme'
Bundle 'xolox/vim-colorscheme-switcher'
Bundle 'croaky/vim-colors-github'
Bundle 'mcabrams/github.vim'
Bundle 'mikewest/vimroom'
Bundle "daylerees/colour-schemes", { "rtp": "vim-themes/" }
Bundle "biskark/vim-ultimate-colorscheme-utility.git"
Bundle "Yggdroot/indentLine"

" === Prereqs ======

Bundle 'rizzatti/funcoo.vim'
Bundle 'xolox/vim-misc'

" === Misc =========

Bundle 'bling/vim-airline'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'mattn/emmet-vim'
Bundle 'SirVer/ultisnips'
Bundle 'rizzatti/dash.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'surround.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'sjl/vitality.vim'
Bundle 'itspriddle/vim-marked'
Bundle 'jpalardy/vim-slime'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Tabmerge'
Bundle 'xolox/vim-notes'
Bundle 'tpope/vim-unimpaired'
Bundle 'moll/vim-node'
Bundle 'csexton/trailertrash.vim'
Bundle 'xolox/vim-shell'
Bundle 'chrisbra/csv.vim'
Bundle 'tpope/vim-markdown'
Bundle 'vim-scripts/mru.vim'

" ==== Disabled =====

" Bundle 'bufexplorer.zip'
" Bundle 'othree/xml.vim'
Bundle 'jistr/vim-nerdtree-tabs'
" Bundle 'AutoTag'
" Bundle 'junegunn/vim-github-dashboard'
" Bundle 'pangloss/vim-javascript'
" Bundle 'myusuf3/numbers.vim'

" Don't move this line, should be below last Bundle '...' always!
filetype plugin indent on

au FileType javascript set dictionary+=$HOME/.vim/dict/node/dict/dict/node.dict

autocmd FileType javascript
  \ :setl omnifunc=jscomplete#CompleteJS

let g:jscomplete_use = ['dom', 'moz']

" Configure nodejs complete
let g:nodejs_complete_config = {
\  'js_compl_fn': 'jscomplete#CompleteJS',
\  'max_node_compl_len': 15
\}

" Ulticolor hotkey setup mostly to reduce interference with easy motion

" think favorite color
let g:ulti_color_Next_Fav = '<leader><leader>fc'
let g:ulti_color_Prev_Fav = '<leader><leader>fC'

" think favorite global color
let g:ulti_color_Next_Global_Fav = '<leader><leader>fgc'
let g:ulti_color_Prev_Global_Fav = '<leader><leader>fgC'

" think favorite font
let g:ulti_color_Font_Next_Fav = '<leader><leader>ff'
let g:ulti_color_Font_Prev_Fav = '<leader><leader>fF'

" think favorite global font
let g:ulti_color_Font_Next_Global_Fav = '<leader><leader>fgf'
let g:ulti_color_Font_Prev_Global_Fav = '<leader><leader>fgF'

" think add font, remove font
let g:ulti_color_Font_Add_Fav = '<leader><leader>af'
let g:ulti_color_Font_Remove_Fav = '<leader><leader>rf'

" Fugitive hotkey setup
nmap <leader>gl :Glog -n 10 --<cr>

" EasyAlign hotkey setup
vnoremap <silent> <leader>ea :EasyAlign<cr>

" Vundle hotkey setup
nmap <leader>bi :BundleInstall<cr>
nmap <leader>bc :BundleClean<cr>
nmap <leader>bu :BundleUpdate<cr>

"UltiSnips Config

let g:UltiSnipsSnippetDirectories=["UltiSnips", "UltiSnips/mcabrams_snips"]
let g:UltiSnipsExpandTrigger="<c-j>"

autocmd! BufRead,BufNewFile *.sass setfiletype sass
autocmd! BufRead,BufNewFile *.scss setfiletype scss

let mapleader = ","
set laststatus=2

syntax on
set autoindent
set smartindent
set cursorline
set go-=L
set go-=r
set history=1000
set hlsearch
set incsearch
set nowrap
set number
set showmatch
set showcmd
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
if has("unnamedplus")
  set clipboard=unnamedplus
elseif has("clipboard")
  set clipboard=unnamed
endif

" if exists('+colorcolumn')
  " set colorcolumn=80
" else
  " au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" endif

" ================= Folding ========================

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set linespace=2
set guifont=Monaco:h11
" set guifont=Menlo:h11
" set guifont=Source\ Code\ Pro:h11
" set guifont=Source\ Code\ Pro\ Light:h11


"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
  silent exe "normal! `[v`]\"_c"
  silent exe "normal! p"
endfunction

" Rubytest
" let g:rubytest_in_quickfix = 1
map <Leader>/ <Plug>RubyTestRunLast " change from <Leader>l to <Leader>/

" NERDtree
" Get startify and nerdtree working on startup
autocmd VimEnter *
      \ if !argc() |
      \   Startify |
      \   NERDTree |
      \   execute "normal \<c-w>w" |
      \ endif

let NERDTreeIgnore=['doc', '\.pyc', '\.rbc$', '\~$', '\.DS_Store$', 'tmp']
let NERDTreeChDirMode=2
let NERDTreeMouseMode=3
let NERDTreeQuitOnOpen=0
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
map <leader>n :NERDTreeToggle<cr>
nmap <leader>f :NERDTreeFind<CR>
autocmd FileType startify setlocal buftype= "Avoid opening in NERDTree and creating a split

" Colorscheme
" colorscheme railscasts
colorscheme Tomorrow-Night
" colorscheme github_modified
"colorscheme github

" Enable Matchit.vim
runtime macros/matchit.vim

" mbe config
map <Leader>mbe :MBEOpen<cr>
map <Leader>mbc :MBEClose<cr>
map <Leader>mbt :MBEToggle<cr>

map <leader>g :TagbarToggle<CR>

" map gitgutter jumping
map <Leader>ngg :GitGutterNextHunk<cr>
map <Leader>pgg :GitGutterNextHunk<cr>

" MiniBufExpl Colors
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg

"""""""""""""""""""""""""""""""""""""""""""""
" Functions from Vimcasts and other places! "
"""""""""""""""""""""""""""""""""""""""""""""

" Store swap file in single local directory
set directory=~/.vim/swap,.

"Close hidden buffers

function! DeleteHiddenBuffers()
  let tpbl=[]
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    silent execute 'bwipeout' buf
  endfor
endfunction

" Allows javascript expected bracket movement
inoremap <C-Return> <CR><CR><C-o>k<Tab>

" Jump to last cursor position unless it's invalid or in an event handler
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" Nohlsearch hotkeys

:nnoremap <CR> :nohlsearch<cr>

function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap _= :call Preserve("normal gg=G")<CR>

" Windowswap Function; see http://stackoverflow.com/questions/2586984/how-can-i-swap-positions-of-two-open-files-in-splits-in-vim
function! MarkWindowSwap()
  let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
  "Mark destination
  let curNum = winnr()
  let curBuf = bufnr( "%" )
  exe g:markedWinNum . "wincmd w"
  "Switch to source and shuffle dest->source
  let markedBuf = bufnr( "%" )
  "Hide and open so that we aren't prompted and keep history
  exe 'hide buf' curBuf
  "Switch to dest and shuffle source->dest
  exe curNum . "wincmd w"
  "Hide and open so that we aren't prompted and keep history
  exe 'hide buf' markedBuf
endfunction

noremap <silent> <leader>mw :call MarkWindowSwap()<CR>
noremap <silent> <leader>pw :call DoWindowSwap()<CR>


" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction

"Close hidden buffers in current tab
command! -nargs=* Only call CloseHiddenBuffers()
function! CloseHiddenBuffers()
  " figure out which buffers are visible in any tab
  let visible = {}
  for t in range(1, tabpagenr('$'))
    for b in tabpagebuflist(t)
      let visible[b] = 1
    endfor
  endfor
  " close any buffer that are loaded and not visible
  let l:tally = 0
  for b in range(1, bufnr('$'))
    if bufloaded(b) && !has_key(visible, b)
      let l:tally += 1
      exe 'bw ' . b
    endif
  endfor
  echon "Deleted " . l:tally . " buffers"
endfun

" Grab path and line number in @
nnoremap <leader>y :let @+=expand("%") . ':' . line(".")<CR>

" Grab selected text and ...
vnoremap <leader>y "+y:let @+=@+.expand("%") . ':' . line(".")<CR>

" Set list shortcut
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Allow vimrc editing
nmap <leader>v :tabedit $MYVIMRC<CR>

" Source vimrc changes
nmap <leader>r :source $MYVIMRC<CR>

" Reopen last file in vs
nmap <c-s-t> :vs<bar>:b#<CR>

" Open browser and navigate to file/line under cursor
nnoremap <leader>o :!echo `git url`/blob/`git rev-parse --abbrev-ref HEAD`/%\#L<C-R>=line('.')<CR> \| xargs open<CR><CR>

" Search and replace selected text shortkey
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" ================ Completion =======================
set wildmode=full
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*/tmp/*

" Angular specific
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

" JsBeautify stuff
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" add wrap for git commits
autocmd Filetype gitcommit spell textwidth=72
