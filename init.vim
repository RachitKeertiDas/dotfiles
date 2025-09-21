set number " Show the absolute file number
set belloff=all

call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs' " Autocomplete brackets

" Language syntactic support
Plug 'rust-lang/rust.vim'
Plug 'godlygeek/tabular'
Plug 'leafgarland/typescript-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'peitalin/vim-jsx-typescript'
" Plug 'plasticboy/vim-markdown'
Plug 'justinmk/vim-syntax-extra'
Plug 'vim-scripts/VimCompletesMe'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
" Latex Sorcery
Plug 'lervag/vimtex'
" Colorscheme
Plug 'srcery-colors/srcery-vim' "Colorscheme
Plug 'ryanoasis/vim-devicons' "This has to be the last plugin loaded
call plug#end()

" 
"  Editor Settings
"

" Vim-go settings:
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1

filetype plugin indent on
set autoindent

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx *.js set filetype=typescriptreact

set softtabstop=4
set tabstop=4
set shiftwidth=4
" Search options
set smartcase
set ignorecase
set splitbelow " split to open at bottom instead of top
set splitright " split to open at right instead of left
set list " show tabs
" Config inspired by https://github.com/jonhoo/configs
"
" Default colorscheme
colorscheme srcery
