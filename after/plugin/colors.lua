-- Set themes color
--
require('rose-pine').setup({
	--- @usage 'main' | 'moon'
	-- dark_variant = 'moon',
	disable_background = false
})

require('onedark').setup({
    style = 'cool',
    transparent = true,
})

require('github-theme').setup({
    theme_style = "dimmed",
    transparent = true,
})

require("nightfox").setup({
    options = {
        transparent = true,
    }
})

require("catppuccin").setup({
    flavour = "macchiato",
    -- flavour = "mocha",
    transparent_background = true,
})

-- gruvbox configurations
vim.g.gruvbox_contrast_dark = "hard"

function MyColor(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

MyColor()
