autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
source $HOME/.config/nvim/plug-config/coc.vim


call plug#begin('~/.vim/plugged')
Plug 'sickill/vim-pasta'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'bfrg/vim-cpp-modern'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'akinsho/toggleterm.nvim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'
call plug#end()

function SaveAndRun()
    :w # When you do :w | :vs <...> it doesn't work very nicely, the saving prevents an update of the terminal window for a short time
    :vs | :term vimrun %:t
endfunction


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
set splitright
set splitbelow
set background=dark
colorscheme palenight
set clipboard+=unnamedplus
highlight LineNr ctermfg=darkgrey cterm=bold

lua << EOF
require('telescope').setup{
    defaults = {
        file_ignore_patterns={"%.o"},
    }
}
EOF

command D nohl
command R exec SaveAndRun()
nnoremap <C-q> :ToggleTerm<CR>

nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

nmap ff :lua require'telescope.builtin'.find_files{}<CR>
nmap fg :lua require'telescope.builtin'.grep_string{}<CR>

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
nnoremap <C-h> :CocCommand clangd.switchSourceHeader<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-l> <C-\><C-n><C-w>w
nnoremap <C-l> <C-\><C-n><C-w>w
inoremap <C-l> <C-\><C-n><C-w>w


autocmd VimResized * wincmd =
autocmd TermOpen * startinsert
autocmd TermOpen * setlocal nonumber norelativenumber
set updatetime=50
