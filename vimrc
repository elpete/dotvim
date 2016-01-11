set nocompatible  " disable vi-compatibility

call plug#begin('~/.vim/plugged')

    Plug 'daylerees/colour-schemes', { 'rtp': 'vim/' }

call plug#end()


syntax on " Turn on syntax highlighting

set number " show line numbers
set nowrap " don't wrap lines

" Font options
set guifont=Source\ Code\ Pro\ Light:h15

" Tab settings
set tabstop=4 " a tab is 4 spaces
set smarttab
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set autoindent
set copyindent

" With a map leader it's possible to do extra key combinations
" " like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nmap <leader>v :tabedit $MYVIMRC<CR>

" autocmd options
if has ("autocmd")
    filetype plugin indent on

    " Source the vimrc file after saving it
    autocmd bufwritepost .vimrc source $MYVIMRC
endif
