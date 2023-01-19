-- Undotree

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

local g = vim.g

g.undotree_WindowLayout = 2
g.undotree_ShortIndicators = 0
g.undotree_DiffpaneHeight = 15
g.undotree_DiffCommand = "diff -u"
g.undotree_SetFocusWhenToggle = 1
