vim.g.mapleader = " "

local map = vim.keymap

map.set("n", "<leader>pv", vim.cmd.Ex)
 
-- Say goodbye to arrow keys
--
map.set({"n", "v"}, "<Up>", "<nop>")
map.set({"n", "v"}, "<Down>", "<nop>")
map.set({"n", "v"}, "<Left>", "<nop>")
map.set({"n", "v"}, "<Right>", "<nop>")

-- This is going to get me cancelled
map.set("i", "<C-c>", "<Esc>")

map.set("n", "<leader>s", ":so %<CR>")
map.set("n", "<leader>w", ":w!<CR>")
map.set("n", "<C-q>q", ":q!<CR>")
map.set("n", "<C-q>w", ":wq!<CR>")
map.set("i", "<C-w>", "<esc>:w!<CR>")
map.set("i", "<C-c><C-c>", "<esc>:q!<CR>")
