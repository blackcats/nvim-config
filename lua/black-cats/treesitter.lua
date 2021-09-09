local treesitter = require('nvim-treesitter.configs')

-- treesitter.configs.setup({
treesitter.setup {
    ensure_installed = { "bash", "c", "lua", "python", "ruby", "vim" },
    highlight = { enable = true},
    indent = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
}
