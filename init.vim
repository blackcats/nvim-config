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
highlight Colorcolumn ctermbg=0 guibg=lightgrey

" Manage Ppluggin
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
let g:gruvbox_transparent_bg = '1'
let g:gruvbox_contrast_dark = 'hard'
set background=dark
