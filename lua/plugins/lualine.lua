return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"echasnovski/mini.icons",
	},
	lazy = false,
	opts = {
		options = {
			theme = "tokyonight",
			section_separators = { left = "", right = "" },
			component_separators = { left = "", right = "" },
		},
		tabline = {
			lualine_a = { "buffers" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch" },
			lualine_c = { "filename" },
			lualine_x = { "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
	},
	keys = {
		{ "<leader>1", "<cmd>LualineBuffersJump 1<CR>", desc = "Go to buffer 1" },
		{ "<leader>2", "<cmd>LualineBuffersJump 2<CR>", desc = "Go to buffer 2" },
		{ "<leader>3", "<cmd>LualineBuffersJump 3<CR>", desc = "Go to buffer 3" },
		{ "<leader>4", "<cmd>LualineBuffersJump 4<CR>", desc = "Go to buffer 4" },
		{ "<leader>5", "<cmd>LualineBuffersJump 5<CR>", desc = "Go to buffer 5" },
		{ "<leader>6", "<cmd>LualineBuffersJump 6<CR>", desc = "Go to buffer 6" },
	},
}
