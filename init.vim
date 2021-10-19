" Nvim starting configuration
" ===========================
"
" TODO:
" - configure telescope
" - configure plugins ansible
" - install & configure nvim-lsp plugin
" - install & configure fzf plugin
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
set undodir=~/.config/nvim/undodir
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
Plug 'plasticboy/vim-markdown'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim', { 'do': 'make' }

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter',
Plug 'neovim/nvim-lspconfig'
Plug 'tmux-plugins/vim-tmux'
call plug#end()

lua require("blackcats")
let mapleader=" "

nnoremap <leader>s :so %<CR>
nnoremap <leader>w :w!<CR>
nnoremap <C-q>q :q!<CR>
nnoremap <C-q>w :wq!<CR>
inoremap <C-c> <esc>
inoremap <C-w> <esc>:w!<CR>
