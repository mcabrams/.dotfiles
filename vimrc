" ==============================================================================
" Important and Vundle Stuff
" ==============================================================================

set nocompatible              " be iMproved
filetype off                  " required!

" Add vundle to rootpath and set install path for bundles
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" NOTE: COMMENTS AFTER BUNDLE COMMANDS ARE NOT ALLOWED.
" Let Vundle manage Vundle; required!
Bundle 'gmarik/vundle'

" -------------------------------
"  Git
" -------------------------------

Bundle 'tpope/vim-fugitive'

" -------------------------------
"  UI
" -------------------------------

Bundle 'bling/vim-airline'

" -------------------------------
"  Text Editing and Surrounding
" -------------------------------

Bundle 'junegunn/vim-easy-align'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'

" -------------------------------
"  Syntaxes
" -------------------------------

Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'

" -------------------------------
"  Syntax Checking
" -------------------------------

Bundle 'scrooloose/syntastic'
Bundle 'csexton/trailertrash.vim'

" -------------------------------
"  Themes and Colors
" -------------------------------

Bundle 'chriskempson/base16-vim'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'vim-scripts/colorsupport.vim'
"Bundle 'godlygeek/csapprox'

" -------------------------------
"  Unite, et al.
" -------------------------------

Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimfiler.vim'

" -------------------------------
"  Terminal Aids
" -------------------------------

Bundle 'sjl/vitality.vim'

" This line needs to come immediately after Bundles
filetype plugin indent on

" -------------------------------
"  END OF VUNDLE BUNDLES
" -------------------------------

" ==============================================================================
" Moving Around, Searching and Patterns
" ==============================================================================

set hlsearch         " highlight all matches for the last used search pattern
set incsearch        " highlight pattern matches as you type
set ignorecase       " ignore case when using a search pattern
set smartcase        " override 'ignorecase' when pattern has upper case
                       " character

" ==============================================================================
" Tags
" ==============================================================================

" ==============================================================================
" Displaying Text
" ==============================================================================

set number
set scrolloff=8         " start scrolling when we're 8 lines away from margins
set sidescrolloff=15    " minimal number of columns to keep left and right of the cursor
set sidescroll=1        " minimal number of columns to scroll horizontally

" ==============================================================================
" Syntax, Highlighting and Spelling
" ==============================================================================

syntax on       " enable syntax and highlighting, must be before colorscheme
set cursorline  " highlight the screen line of the cursor

" ==============================================================================
" Multiple Windows
" ==============================================================================

" ==============================================================================
" Multiple Tab Pages
" ==============================================================================

set laststatus=2      " always show status line
set tabpagemax=20     " prevent vim from opening more than 20 tabs

" ==============================================================================
" Terminal
" ==============================================================================

" ==============================================================================
" Using The Mouse
" ==============================================================================

" ==============================================================================
" Printing
" ==============================================================================

" ==============================================================================
" Messages and Info
" ==============================================================================

" ==============================================================================
" Selecting Text
" ==============================================================================

" ==============================================================================
" Editing Text
" ==============================================================================

set undolevels=5000      "maximum number of changes that can be undone

" ==============================================================================
" Tabs and Indenting
" ==============================================================================

" Use two spaces for indentation
set tabstop=2      " number of spaces a <Tab> in the text stands for
set softtabstop=2  " if non-zero, number of spaces to insert for a <Tab>
set shiftwidth=2   " number of spaces used for each step of (auto)indent
set expandtab      " expand <Tab> to spaces in Insert mode
set autoindent     " automatically set the indent of a new line
set smartindent    " do clever autoindenting

" ==============================================================================
" Folding
" ==============================================================================

" ==============================================================================
" Diff Mode
" ==============================================================================

" ==============================================================================
" Mapping
" ==============================================================================

" ==============================================================================
" Reading and Writing Files
" ==============================================================================

" ==============================================================================
" The Swap File
" ==============================================================================

" ==============================================================================
" Command Line Editing
" ==============================================================================

" ==============================================================================
" Executing External Commands
" ==============================================================================

set history=1000 " how many command lines are remembered

" ==============================================================================
" Running Make and Jumping To Errors
" ==============================================================================

" ==============================================================================
" Language Specific
" ==============================================================================

" ==============================================================================
" Multi-Byte Characters
" ==============================================================================

" ==============================================================================
" Various
" ==============================================================================

" ==============================================================================
" Mappings
" ==============================================================================

" Remap leader key to ,
let mapleader = ","

" Going to next occurence of a search will center on the line it's found
map N Nzz
map n nzz

" Nohlsearch hotkeys
:nnoremap <CR> :nohlsearch<cr>

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Allow vimrc editing
nmap <leader>v :tabedit $MYVIMRC<CR>

" Source vimrc changes
nmap <leader>r :source $MYVIMRC<CR> :echo "Vimrc reloaded!"<CR>

"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
  silent exe "normal! `[v`]\"_c"
  silent exe "normal! p"
endfunction

" Vundle hotkey setup
nmap <leader>bi :BundleInstall<cr>
nmap <leader>bc :BundleClean<cr>
nmap <leader>bu :BundleUpdate<cr>

" ==============================================================================
" Colors
" ==============================================================================

if !has("gui_running")
  set term=screen-256color
endif

set t_Co=256             " set for 256 color colorschemes
set background=light
colorscheme base16-railscasts

" ==============================================================================
" Swap Files
" ==============================================================================

set directory=~/.vim/swap,.

" ==============================================================================
" Autocommands
" ==============================================================================

augroup vimenter
  autocmd!

  " Open a vimfiler tree automatically when Vim starts up
  autocmd VimEnter * VimFilerExplorer

augroup END
