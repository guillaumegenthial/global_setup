" Configuration

" Pathogen first
execute pathogen#infect()

" escape insert mode with j and k
inoremap jk <ESC>

" launch a search with space instead of back slash
let mapleader = "\<Space>"

" Basic settings
"
filetype indent plugin on
syntax on
set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8
" option 2 to use backspace to delete words
set backspace=2

" Use indentation of previous line
set autoindent
set tabstop=2  " tab width is 4 spaces
set expandtab  " expand tabs to spaces
set softtabstop=2
set shiftwidth=2 " indetn also with 4 spaces

"set foldmethod=indent

" turn line number on
" set number
" Highlight search pattern where found
set hlsearch
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" ---------- Modules -----------
""""""""""""""""""""""""""""
" = > Solarized
" """"""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized


""""""""""""""""""""""""""""""
" => CTRL-P
" """"""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

"""""""""""""""""""""""""""""
" = > YouCompleteMe
" """""""""""""""""""""""""""
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" set completeopt-=preview 
