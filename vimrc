call pathogen#infect()
set nocompatible

filetype plugin indent on

colorscheme 256-grayvim
set mouse=a

set foldmethod=marker
set history=1000

" ------  Charset Init  ------
scriptencoding utf-8
set encoding=utf-8

" ------  Visual Options  ------
syntax on
set number
set wrap 
set linebreak
set nolist
set textwidth=80
set ruler
set number

" ------  Indent Options  -----
set cindent
set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

"------  Searching  ------
set hlsearch
set smartcase
set ignorecase
set incsearch



set nobackup
set tags=tags
set digraph
set showmatch


" ------   Buffer Navigation ------
" Ctrl Left/h & Right/l cycle between buffers
noremap <silent> <C-left> :bprev<CR>
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-right> :bnext<CR>
noremap <silent> <C-l> :bnext<CR>


"------  Window Navigation  ------
"" <Leader>hljk = Move between windows
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k


" -------  Bundle options  ------
" For airline
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
set laststatus=2

" For NerdTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" For syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" For gitgutter
let g:gitgutter_max_signs = 500  " default value






" ------  Function Mapping  ------
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


