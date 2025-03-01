return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
			dim_inactive = true,
			on_highlights = function(hl, c)
				-- Make borders slightly more legible VertSplit didn't seem to do anything
				hl.WinSeparator = {
					fg = c.cyan,
				}
			end,
		},
	},
}
