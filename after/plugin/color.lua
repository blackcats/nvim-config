-- Set themes color
--
require('rose-pine').setup({
	--- @usage 'main' | 'moon'
	-- dark_variant = 'moon',
	disable_background = false
})

-- onedark theme
-- see github: navarasu/onedark.nvim
require('onedark').setup({
    style = 'cool',
    transparent = true,
})

-- github-theme 
-- see github: projekt0n/github-nvim-theme
require('github-theme').setup({
    theme_style = "dimmed",
    transparent = true,
})

-- nightfox theme
-- see: github EdenEast/nightfox.nvim
require("nightfox").setup({
    options = {
        transparent = true,
    }
})

-- catppuccin theme
-- see github: catppuccin/nvim
require("catppuccin").setup({
    flavour = "macchiato",
    -- flavour = "mocha",
    transparent_background = true,
})

-- gruvbox theme configurations
-- see github: morhetz/gruvbox
vim.g.gruvbox_contrast_dark = "hard"

function MyColor(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

MyColor()
