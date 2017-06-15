" ------  Vundle Setting  ------
set nocompatible " Required

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/AutoComplPop'
Plug 'vim-scripts/L9'
Plug 'scrooloose/nerdcommenter'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'Townk/vim-autoclose'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" Initialize plugin system
call plug#end()

let mapleader = "\<Space>" " <Leader> means 'Space'
" ------  Color Options  ------
set t_Co=256
colorscheme diablo3

syntax enable
if &term =~ '256color'
    set term=screen-256color
    set t_ut=

    set background=dark
    colorscheme monokai
endif

" ------  Fold Options  ------
set foldmethod=syntax
set foldnestmax=100
set nofoldenable
set foldlevel=0

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
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" ------  Searching Options  ------
set hlsearch
set smartcase
set ignorecase
set incsearch

" -------  Unclassified Options  ------
set mouse=a
set history=1000
set splitright
set splitbelow
" :sp filename    for a horizontal split
" :vs filename    for a vertical split

set nobackup
set tags=tags
" set digraph " enable me to write special characters.
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

nnoremap <Leader><Left> <C-w>h
nnoremap <Leader><Right> <C-w>l
nnoremap <Leader><Down> <C-w>j
nnoremap <Leader><Up> <C-w>k



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
let g:statline_syntastic = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": [],
    \ "passive_filetypes": [] }
" Set Syntastic checkers
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_c_checkers = ['gcc']
noremap <silent> <C-y> :SyntasticToggleMode<CR>

" If you want to toggle the Syntastic Mode,
" i.e. change active to passive mode or passive to active mode,
" press ctrl+y
" If you want to add c compiler options, add options as string type
" For exmaple, let g:syntastic_c_compiler_options = "-std=gnu99"

" For gitgutter
let g:gitgutter_max_signs = 500  " default value

