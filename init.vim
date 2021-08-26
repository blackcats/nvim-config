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
"clear statusline
set statusline=
set statusline=%<%f\ %y\ %r%m\ %=%-14.(%l:%c%V%)\ %<%P

" Display, line and columns management
set nu relativenumber
set scrolloff=8
set ttyfast
set nowrap
set tw=78
set columns=80
set colorcolumn=80
highlight Colorcolumn ctermbg=0 guibg=lightgrey

