"
" Customize ViM
"


" Plugins
call plug#begin()
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

" NERDTree Config
nmap <F2> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

filetype off
" filetype plugin indent on
filetype indent on
let mapleader=","
set wildmode=full
set wildmenu
set lazyredraw

set history=1000
set undolevels=1000
set nobackup
set nowritebackup

set backspace=2

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set modelines=1
nnoremap <space> za

set nocompatible
set ruler
set number
set cursorline
set nowrap

set nohlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

set smarttab
set autoindent
set copyindent
set expandtab
set ts=2
set shiftwidth=2

set background=dark

set visualbell
set noerrorbells

syntax on

highlight Comment ctermfg=darkgrey
highlight Comment guifg=darkgrey
highlight ColorColumn ctermbg=245
highlight clear CursorLine
highlight CursorLine ctermbg=236
highlight CursorColumn ctermbg=236

set tags+=gem.tags

