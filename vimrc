set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" NOTE: comments after Bundle commands are not allowed.

Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'Shougo/unite.vim'

filetype plugin indent on     " required after vundle bundles!
