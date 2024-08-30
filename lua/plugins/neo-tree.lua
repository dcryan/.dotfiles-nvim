return {
	"nvim-neo-tree/neo-tree.nvim",
	cmd = "Neotree",
	branch = "v3.x",
	keys = {
		{ "<leader>n", "<cmd>Neotree reveal toggle<CR>", desc = "Toggle NeoTree" },
		{ "<leader>N", "<cmd>Neotree reveal<CR>", desc = "Reveal current file in NeoTree" },
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
			follow_current_file = {
				enable = true,
			},
			use_libuv_file_watcher = true,
			hijack_netrw_behavior = "open_current",
		},
	},
}
