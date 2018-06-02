syntax on
set number
set mouse=a
set splitright
set ls=2
set tw=80
set ruler

" Because Mac terminals don't know how to backspace
set bs=2

" :w!! so you don't have to open vim with sudo
" https://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work#7078429
cmap w!! w !sudo tee > /dev/null %

" Vundle init
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on

" Vundle bundles
" Bundle 'Valloric/YouCompleteMe'

Bundle 'vim-misc'

Bundle 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Bundle 'tpope/vim-fugitive'

Bundle 'bronson/vim-trailing-whitespace'

Bundle 'xolox/vim-session'
let g:session_autosave = 'no'
let g:session_autoload = 'no'

Bundle 'groenewege/vim-less'

Bundle 'markcornick/vim-vagrant'

Bundle 'tpope/vim-sleuth'

Bundle 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'
