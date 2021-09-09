local telescope = require("telescope")

telescope.setup({
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-cate'
        },
            
        ignore_file_patterns = {
--            "./audio/.*",
--            "./archives/.*",
--            "./images/.*",
--            "./to_order/.*",
            "videos",
            "%.pdf", "%.PDF",
            "%.iso", "%.avi", "%.AVI"
        }
    }
})
