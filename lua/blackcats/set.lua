-- Set parameters

local o = vim.opt

o.fileformat = "unix"
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.smartindent = true

o.nu = true
o.relativenumber = true
o.colorcolumn = "80"

o.wrap = false

o.scrolloff = 8
o.signcolumn = "yes"

o.mouse = ""
o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
o.undofile = true

o.updatetime = 500

o.incsearch = true
o.hlsearch = false
o.showmatch = true

--  Don't know what they do...

o.guicursor = ""

o.termguicolors = true

o.isfname:append("@-@")
