vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Say goodbye to arrow keys
--
vim.keymap.set({"n", "v"}, "<Up>", "<nop>")
vim.keymap.set({"n", "v"}, "<Down>", "<nop>")
vim.keymap.set({"n", "v"}, "<Left>", "<nop>")
vim.keymap.set({"n", "v"}, "<Right>", "<nop>")

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>s", ":so %<CR>")
vim.keymap.set("n", "<leader>w", ":w!<CR>")
vim.keymap.set("n", "<C-q>q", ":q!<CR>")
vim.keymap.set("n", "<C-q>w", ":wq!<CR>")
vim.keymap.set("i", "<C-w>", "<esc>:w!<CR>")
vim.keymap.set("i", "<C-c><C-c>", "<esc>:q!<CR>")

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")

-- remap split keymap
vim.keymap.set("n", "<leader><BAR>", ":vsplit<CR>")
vim.keymap.set("n", "<leader>-", ":split<CR>")
