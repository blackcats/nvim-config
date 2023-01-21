-- Install packer
--
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
 end
 return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- colors themes
  use { 'rose-pine/neovim', as = 'rose-pine' }
  use { 'navarasu/onedark.nvim' }
  use { 'EdenEast/nightfox.nvim' }
  use { 'projekt0n/github-nvim-theme', tag = 'v0.0.7' }
  use { "catppuccin/nvim", as = "catppuccin" }
  use { 'morhetz/gruvbox' }

  use { 'nvim-lualine/lualine.nvim' }

  -- Install Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- End wise
  use {
    "RRethy/nvim-treesitter-endwise",
    requires = "nvim-treesitter",
    -- wants = "nvim-treesitter",
    event = "InsertEnter",
  }

  -- Auto pairs
  use {
    "windwp/nvim-autopairs",
    module = {
      "nvim-autopairs.completion.cmp",
      "nvim-autopairs"
    },
  }

  -- Install LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      -- Snippet Collection (Optional)
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- Install markdown 
  use {'preservim/vim-markdown'}

  -- tmux.conf vi mplufin
  use { 'tmux-plugins/vim-tmux' }
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines

  -- Git plugins
  use { 'tpope/vim-fugitive' }
  use { 'lewis6991/gitsigns.nvim' }

  use { 'mbbill/undotree' }
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines

  -- to test
  -- use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
