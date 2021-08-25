" Nvim starting configuration
"
syntax on
set noerrorbells

" Display line number
set nu relativenumber
set scrolloff=8

" Read local .vimrc if present in the directory vim is launch
set exrc

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set incsearch

" Line management
set nowrap
set tw=78
set columns=80

set mouse=""
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set colorcolumn=80
highlight Colorcolumn ctermbg=0 guibg=lightgrey
