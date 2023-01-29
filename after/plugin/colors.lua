-- Set themes color
--
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
    -- flavour = "macchiato",
    flavour = "mocha",
    -- transparent_background = true,
})

-- gruvbox theme configurations
-- see github: morhetz/gruvbox
vim.g.gruvbox_contrast_dark = "hard"

function MyColor(color)
	-- color = color or "catppuccin"
	color = color or "nightfox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

MyColor()
