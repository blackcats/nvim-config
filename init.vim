" Nvim starting configuration
"
" Read local .vimrc if present in the directory vim is launch
set exrc

syntax on
set noerrorbells

" File format
set fileformat=unix
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" search 
set smartcase
set incsearch
set ignorecase
set showmatch
set nohlsearch

"set cursorline
set mouse=""
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Manage status line
set laststatus=2
set statusline=
set statusline=%<%f\ %y\ %r%m\ %=%-14.(%l:%c%V%)\ %<%P

" Display, line and columns management
set nu relativenumber
set scrolloff=8
set ttyfast
set nowrap
set colorcolumn=80
set signcolumn=yes

" Change updatetime from the default (4000ms = 4s) to 500ms (0.5s)
set updatetime=500

" Plugin management
call plug#begin('~/.config/nvim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'hashivim/vim-terraform'
Plug 'pearofducks/ansible-vim'
call plug#end()

" Color management
let g:gruvbox_contrast_dark = "hard"
set background=dark

colorscheme gruvbox

"highlight Colorcolumn ctermbg=darkgrey
highlight Normal ctermbg=None
hi CursorLineNr ctermfg=lightgrey
