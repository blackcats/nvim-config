-- Undotree

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.g.undotree_WindowLayout = 2
vim.g.undotree_ShortIndicators = 0
vim.g.undotree_SplitWidth = 30
vim.g.undotree_DiffpaneHeight = 15
vim.g.undotree_DiffCommand = "diff -u"
vim.g.undotree_SetFocusWhenToggle = 1
