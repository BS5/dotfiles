" ViM Configuration
"   Expand all fold: zR
"   Collapse all folds: zM
"   Expand/collapse a fold: <space>

let mapleader=","

" Files {{{
filetype off
filetype plugin indent on
set wildmode=full
" }}}

" Constraints {{{
set history=9999
set undolevels=9999
set nobackup
set nowritebackup
" }}}

" Editing {{{
" Fix Vim 8.0 to backspace over line breaks
set backspace=2
" }}}

" Indenting {{{
set smarttab
set autoindent
set copyindent
set expandtab
set ts=2
set shiftwidth=2
" }}}

" Folding {{{
set foldmethod=indent
set foldnestmax=10
set foldlevelstart=10
set foldlevel=2
set nofoldenable
set modelines=1
nnoremap <space> za
" }}}

" Display {{{
set nocompatible
set ruler
set number
set relativenumber
set cursorline
set colorcolumn=120
set nowrap
" }}}

" Search {{{
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set shortmess-=S
" }}}

" File Tabs
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprec<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
" }}}

