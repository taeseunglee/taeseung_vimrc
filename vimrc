call pathogen#infect()
set nocompatible

filetype plugin indent on

colorscheme Mustang
set mouse=a

set foldmethod=marker
set incsearch
set softtabstop=2
set laststatus=2
set hi=1000
set title

"------  Charset Init  ------
scriptencoding utf-8
set encoding=utf-8

"------  Visual Options  ------
syntax on
set number
set wrap 
set linebreak
set nolist
set textwidth=80
set ruler

"------  Indent Options  -----
set cindent
set autoindent
set shiftwidth=2
set tabstop=2


set hls
set scs

set nobackup
set tags=tags
set ignorecase
set smartcase
set hlsearch
set digraph

set showmatch
set nu
set expandtab

map<F2> :w <CR> :! gcc % && time ./a.out < test <CR>
map<F3> :w <CR> :! gcc % && time ./a.out <CR>
map<F4> :w <CR> :! gcc - g - lm -Wall -03 % && time ./a.out <CR>
map<F6> :w <CR> :! make && ./a.out <CR>
map<F7> :w <CR> :! g++ -g -lm -Wall % && time ./a.out <CR>
map<F8> :w <CR> :! g++ -g -lm -Wall % && time ./a.out < test <CR>
map<F9> :w <CR> :!python % <CR>
map tn :tabnew <CR>
map tq :q! <CR>
map <C-n> :NERDTreeToggle<CR>

"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"let g:NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup


