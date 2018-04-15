" ------  Vundle Setting  ------
set nocompatible " Required

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/L9'

" On-demand loading
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'Valloric/YouCompleteMe'
Plug 'Valloric/ListToggle'
 " Automatically resizes vim windows (splits) when you switch to another window.
Plug 'kovetskiy/vim-autoresize'

" Initialize plugin system
call plug#end()

let mapleader = "\<Space>" " <Leader> means 'Space'
" ------  Color Options  ------
set t_Co=256
colorscheme diablo3

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
" <Leader>hljk = Move between windows
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k

nnoremap <Leader><Left> <C-w>h
nnoremap <Leader><Right> <C-w>l
nnoremap <Leader><Down> <C-w>j
nnoremap <Leader><Up> <C-w>k

" -------  Bundle options  ------
" For gitgutter
let g:gitgutter_max_signs = 500  " default value

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

" For YouCompleteMe options
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_show_diagnostics_ui = 1 
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1 
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:ycm_complete_in_strings = 1 
let g:ycm_collect_identifiers_from_tags_files = 0 
let g:ycm_path_to_python_interpreter = ''

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info

let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]

" For ycm Symbol Setting
let g:ycm_error_symbol = "✗"
let g:ycm_warning_symbol = "⚠"

" highlight YcmErrorLine 
" highlight YcmWarningLine 
highligh YcmErrorSection term=reverse cterm=bold ctermfg=232 ctermbg=160 gui=bold guifg=#000000 guibg=#990000
highligh YcmWarningSection term=reverse cterm=bold ctermfg=232 ctermbg=166 gui=bold guifg=#000000 guibg=#df5f00

" For ListToggle
let g:lt_location_list_toggle_map = '<leader>t'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" Close quickfix-list and location-list when a file is closed
autocmd BufWinEnter quickfix nnoremap <silent> <buffer>
            \   q :cclose<cr>:lclose<cr>
autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
            \   bd|
            \   q | endif

" Change a color of first line in quickFixLin (for Syntax check line)
highlight QuickFixLine term=reverse cterm=bold ctermbg=240 gui=undercurl guisp=#ff0000

" For autoresize
let g:autoresize_width = 80
let g:autoresize_height = 30
