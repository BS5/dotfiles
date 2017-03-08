" ViM Customization
"   Expand all fold: zR
"   Collapse all folds: zM
"   Expand/collapse a fold: <space>

" Pathogen {{{
execute pathogen#infect()
" }}}


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

" Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set modelines=1
nnoremap <space> za
" }}}

" Display {{{
set nocompatible
set ruler
set number
set cursorline
" set colorcolumn=80
" }}}

" Search {{{
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
" }}}

" Indenting {{{
set smarttab
set autoindent
set copyindent
set expandtab
set ts=2
set shiftwidth=2
set textwidth=80
" }}}

" Syntax {{{
set background=dark
syntax on
" colorscheme slate2
highlight Comment ctermfg=darkgrey
highlight Comment guifg=darkgrey
highlight ColorColumn ctermbg=245
highlight clear CursorLine
highlight CursorLine ctermbg=236
highlight CursorColumn ctermbg=236
" }}}

" Tags {{{
set tags+=gem.tags
" }}}

" File mappings {{{
au BufRead,BufNewFile *.mkd set filetype=markdown
au BufRead,BufNewFile *.md set filetype=markdown
" }}}

" GUI {{{
set go-=T
set gfn=Monaco\ Regular:h10
set guioptions-=r
" }}}

" NETRW {{{
" Setup netrw to work like nerdtree
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browser_split=4
let g:netrw_winsize=50
" augroup ProjectDrawer
" autocmd!
" autocmd VimEnter * :Vexplore
" augroup END
" }}}

" Plugins {{{
" }}}


" vim:foldmethod=marker:foldlevel=0
