"--------------------------------------------------
" .vimrc
"--------------------------------------------------


"--------------------------------------------------
execute pathogen#infect()

filetype off
filetype plugin indent on
let mapLeader="\\"

"--------------------------------------------------
" Constraints
"--------------------------------------------------
set history=1000
set undolevels=1000
set nobackup
set nowritebackup

"--------------------------------------------------
" Display
"--------------------------------------------------
set nocompatible
set ruler
set number
set cursorline

"--------------------------------------------------
" Search
"--------------------------------------------------
set nohlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

"--------------------------------------------------
" Indenting
"--------------------------------------------------
set smarttab
set autoindent
set expandtab
set ts=2
set shiftwidth=2

"--------------------------------------------------
" Syntax
"--------------------------------------------------
set background=dark
syntax on
" colorscheme slate2
highlight Comment ctermfg=darkgrey
highlight Comment guifg=darkgrey
highlight ColorColumn ctermbg=245
highlight clear CursorLine
highlight CursorLine ctermbg=236
highlight CursorColumn ctermbg=236

"--------------------------------------------------
" Tags
"--------------------------------------------------
set tags+=gem.tags

"--------------------------------------------------
" File mappings
"--------------------------------------------------
au BufRead,BufNewFile *.mkd set filetype=markdown
au BufRead,BufNewFile *.md set filetype=markdown

"--------------------------------------------------
" GUI
"--------------------------------------------------
set go-=T
set gfn=Monaco\ Regular:h10
set guioptions-=r

"if has("autocmd")
"  autocmd BufReadPost *
"    \ if line("'\"|) > 1 && line("'\"") <= line("$") | 
"    \   exe "normal! g`\"" |
"    \ endif
"endif

"--------------------------------------------------
" Plugins
"--------------------------------------------------













