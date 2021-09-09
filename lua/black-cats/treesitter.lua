local treesitter = require('nvim-treesitter')

treesitter.configs.setup {
    ensure_installed = { "bash", "c", "lua", "python", "ruby", "vim" },
    highlight = { enable = true},
    indent = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
}
