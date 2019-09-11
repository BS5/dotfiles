" ViM Configuration
"   Expand all fold: zR
"   Collapse all folds: zM
"   Expand/collapse a fold: <space>

" Files {{{
filetype off
filetype plugin indent on
let mapLeader="\\"
set wildmode=full
" }}}

" Constraints {{{
set history=1000
set undolevels=1000
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
set cursorline
set nowrap
" set colorcolumn=80
" }}}

" Search {{{
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
" }}}

" vim:foldmethod=marker:foldlevel=0
