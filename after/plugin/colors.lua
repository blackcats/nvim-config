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

function MyColor(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

MyColor()
