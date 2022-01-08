autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
source $HOME/.config/nvim/plug-config/coc.vim

call plug#begin('~/.vim/plugged')
Plug 'bfrg/vim-cpp-modern'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'akinsho/toggleterm.nvim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'
call plug#end()

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set background=dark
colorscheme palenight
set clipboard+=unnamedplus
highlight LineNr ctermfg=darkgrey cterm=bold

command R w | TermExec size=100 direction=vertical cmd="vimrun %:t"
nnoremap <C-q> :ToggleTerm<CR>

nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:clang_library_path='/usr/lib'
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1

let g:global_puglin_extensions = [
        \ 'coc-snippets',
        \ 'coc-pairs',
        \ 'coc-json',
        \ 'coc-tsserver',
        \ 'coc-eslint',
        \ 'coc-prettier',
        \ 'coc-clangd'
      \ ] 

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-x> :bn<CR>
nnoremap <C-y> :bp<CR>
autocmd VimResized * wincmd =
set updatetime=300
