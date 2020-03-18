inoremap jk <ESC>

" General settings
filetype indent plugin on
syntax on
set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8
set backspace=2
set autoindent
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set number

" Python settings
let python_highlight_all=1
set colorcolumn=80

" Comment code with ,cc or ,cu
autocmd filetype c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Highlight search pattern where found
set hlsearch
" This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
