set nocompatible              " be iMproved

call plug#begin('~/.vim/plugged')

" Plugins 
Plug 'scrooloose/nerdtree'                                                  " Directory viewer
Plug 'vim-airline/vim-airline'                                              " Status line
Plug 'tpope/vim-fugitive'                                                   " Git integration
Plug 'tpope/vim-commentary'                                                 " Commenting out code
Plug 'derekwyatt/vim-scala'                                                 " Scala support
Plug 'kien/ctrlp.vim'                                                       " Fuzzy file searching
Plug 'w0rp/ale'                                                             " Async Linting (req. Vim 8+)
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}    " Live Markdown previews
Plug 'plytophogy/vim-virtualenv'                                            " Python virtualenv support

call plug#end()

" General Settings

set background=dark

set number

" Tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Let backspace work on indents
set bs=2

" Syntax highlighting
syntax on

" Easy motion
nmap j gj
nmap k gk

" Clipboard copying
vmap cc "*y

" Show current buffer location in NERDTree
map ff :NERDTreeFind<CR>

" Look for virtualenvs in current working directory
let g:virtualenv_directory = $PWD
