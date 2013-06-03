set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github

Bundle 'Indent-Guides'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'SuperTab'
Bundle 'scrooloose/syntastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'closetag.vim'
Bundle 'ctrlp.vim'
Bundle 'fugitive.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/taglist.vim'
Bundle 'html5.vim'
Bundle 'HTML5-Syntax-File'
Bundle 'jpalardy/spacehi.vim'
Bundle 'surround.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'Haml'
Bundle 'matchit.zip'
Bundle 'rails.vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'chrisbra/color_highlight'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'bufexplorer.zip'

set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %l,\ col:\ %c%v\ (%p)%)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
filetype plugin indent on

let mapleader = ","

syntax on
set number
set hlsearch
set showmatch
set incsearch
set nowrap
set autoindent
set history=1000
set cursorline
if has("unnamedplus")
  set clipboard=unnamedplus
elseif has("clipboard")
  set clipboard=unnamed
endif

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set guifont=Monaco\ for\ Powerline:h12
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" NERDtree
autocmd vimenter * NERDTree
let NERDTreeIgnore=['doc', '\.pyc', '\.rbc$', '\~$', '\.DS_Store$', 'tmp', 'log']
let NERDTreeChDirMode=2
let NERDTreeMouseMode=3
let NERDTreeQuitOnOpen=0
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1
map <leader>n :NERDTreeToggle<cr>

" powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2

" Indent-Guides
let g:indent_guides_guide_size=1

" Colorscheme
colorscheme Tomorrow-Night

" Enable Matchit.vim
runtime macros/matchit.vim


"""""""""""""""""""""""""""""""""""""""""""""
" Functions from Vimcasts and other places! "
"""""""""""""""""""""""""""""""""""""""""""""

" StripTrailingWhitespaces function and mapping with autocmd on saves
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
" autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()

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

" Set list shortcut
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Allow vimrc editing
nmap <leader>v :tabedit $MYVIMRC<CR>

" ================ Completion =======================

set wildmode=longest
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
