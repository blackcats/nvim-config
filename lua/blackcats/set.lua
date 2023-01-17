-- Set parameters
--
vim.opt.fileformat = "unix"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"

vim.opt.wrap = false

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.mouse = ""
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.updatetime = 500

vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.showmatch = true

-- Don't know what they do...
--
vim.opt.guicursor = ""


vim.opt.termguicolors = true

vim.opt.isfname:append("@-@")
