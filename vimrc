" ==============================================================================
" Important and Vundle Stuff
" ==============================================================================

set nocompatible              " be iMproved
filetype off                  " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" NOTE: COMMENTS AFTER BUNDLE COMMANDS ARE NOT ALLOWED.
" Let Vundle manage Vundle; required!
Plugin 'gmarik/Vundle.vim'

" -------------------------------
"  Beautifiers
" -------------------------------

Plugin 'git://github.com/miripiruni/CSScomb-for-Vim.git'

" -------------------------------
"  Buffer and File Navigation
" -------------------------------

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mhinz/vim-startify'
Plugin 'henrik/vim-indexed-search'
Plugin 'yssl/QFEnter'

" -------------------------------
"  Git
" -------------------------------

Plugin 'tpope/vim-fugitive'

" -------------------------------
"  Language Specific
" -------------------------------

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'tpope/vim-endwise'
Plugin 'lepture/vim-velocity'

" -------------------------------
"  Moving Around
" -------------------------------

Plugin 'benjifisher/matchit.zip'
Plugin 'tpope/vim-unimpaired'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kana/vim-textobj-user'

" Dependencies: 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'

" -------------------------------
"  Project wide search and replace
" -------------------------------

" http://stackoverflow.com/questions/5686206/search-replace-using-quickfix-list-in-vim
Plugin 'henrik/vim-qargs'

" -------------------------------
"  Syntax Checking
" -------------------------------

Plugin 'scrooloose/syntastic'
Plugin 'csexton/trailertrash.vim'

" -------------------------------
"  Syntaxes
" -------------------------------

Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-haml'

" -------------------------------
"  Terminal Aids
" -------------------------------

Plugin 'sjl/vitality.vim'

" -------------------------------
"  Text Editing and Surrounding
" -------------------------------

Plugin 'junegunn/vim-easy-align'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-abolish'
Plugin 'jgdavey/vim-blockle'

" -------------------------------
"  Text Expansion
" -------------------------------

Plugin 'SirVer/ultisnips'
Plugin 'mattn/emmet-vim'

" -------------------------------
"  Themes and Colors
" -------------------------------

Plugin 'chriskempson/base16-vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'vim-scripts/colorsupport.vim'
"Plugin 'chrisbra/Colorizer'
Plugin 'lilydjwg/colorizer'
"Plugin 'godlygeek/csapprox'

" -------------------------------
"  UI
" -------------------------------

Plugin 'bling/vim-airline'

" -------------------------------
"  Utility
" -------------------------------

Plugin 'tpope/vim-repeat'

" All of your Plugins must be added before the following line
call vundle#end()            " required

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
set linespace=2         " number of pixel lines to use between characters

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
" GUI
" ==============================================================================

set guioptions-=r "remove right-hand-scrollbar
set guioptions-=L "remove left-hand-scrollbar
set guioptions-=T "remove toolbar

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

set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.swo,*.zip

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

" Search and replace selected text shortkey
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Search and replace selected text shortkey project wide (with qargs, should do Ggrep before)
vnoremap <C-r>! "hy:Ggrep <C-R>h \| Qargs \| argdo %s/<C-R>h//gc \| update<left><left><left><left><left><left><left><left><left><left><left><left>

" NERDTree mappings
map <leader>n :NERDTreeToggle<cr>
nmap <leader>f :NERDTreeFind<CR>

" Yank filepath to clipboard
nmap <leader>yf! :let @+ = expand("%:p")<CR>
nmap <leader>yff :let @+ = expand("%") . " - Line number:" . line(".")<CR>
nmap <leader>yf :let @+ = expand("%")<CR>

" This allows html tags to be escaped
nnoremap <Leader>he :'[,']call HtmlEscape()<CR>
vnoremap <Leader>he :call HtmlEscape()<CR>

function! HtmlEscape()
  silent s/&/\&amp;/eg
  silent s/</\&lt;/eg
  silent s/>/\&gt;/eg
endfunction

" Go back to last active tab
let g:lasttab = 1
nmap <Leader>lt :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Ggrep in new tab
function! GgrepInNewTab(name)
  tabe %
  exe "Ggrep" a:name
endfunction

vnoremap <Leader>gg "jy:Ggrep <C-R>j<CR>
nmap <Leader>gg "jyw:Ggrep <C-R>j<CR>
vnoremap <Leader>ggt "jy:GgrepInNewTab <C-R>j<CR>
nmap <Leader>ggt "jyw:GgrepInNewTab <C-R>j<CR>

command! -nargs=1 GgrepInNewTab call GgrepInNewTab(<f-args>)

" ==============================================================================
" Colors
" ==============================================================================

set t_Co=256             " set for 256 color colorschemes
set background=dark
colorscheme base16-ocean
set guifont=Source\ Code\ Pro:h14

if !has("gui_running")
  set term=screen-256color
  set background=dark
  colorscheme base16-ocean
endif

" ==============================================================================
" Swap Files
" ==============================================================================

set directory=~/.vim/swap,.
set backupdir=~/.vim/swap,.

" ==============================================================================
" Autocommands
" ==============================================================================

" Interested why these are structured this way? Read: http://learnvimscriptthehardway.stevelosh.com/chapters/14.html

augroup vim_enter
  autocmd!

  " Get startify and nerdtree working on startup
  autocmd VimEnter *
        \ if !argc() |
        \   Startify |
        \   NERDTree |
        \   execute "normal \<c-w>w" |
        \ endif
augroup END

augroup filetype_startify
  autocmd!
  autocmd FileType startify setlocal buftype= "Avoid opening in NERDTree and creating a split
augroup END

augroup vim_fugitive
  autocmd!
  autocmd QuickFixCmdPost *grep* cwindow
augroup END

let g:syntastic_javascript_checkers = ['jsxhint']
