return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		dashboard = { enabled = true },
		lazygit = {
			-- your lazygit configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	keys = {
		-- keymaps for the plugin
		-- you can use the string "<Plug>(snacks-<command>)" to map to the default keymaps
		-- or you can map to a custom keymap
		-- for example:
		-- ["n|<C-p>"] = "<Plug>(snacks-toggle)",
		-- ["n|<leader>g"] = "<Plug>(snacks-lazygit)",
		{
			"<leader>lg",
			function()
				Snacks.lazygit()
			end,
			desc = "Lazygit",
		},
	},
}
