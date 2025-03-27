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
			disabled_filetypes = { "neo-tree", "Avante", "AvanteSelectedFiles", "AvanteInput" },
		},
		-- tabline = {
		-- 	lualine_a = { "buffers" },
		-- },
		sections = {
			lualine_a = {
				{
					"mode",
					fmt = function(str)
						return str:sub(1, 1)
					end,
					padding = {
						left = 1,
						right = 0,
					},
				},
			},
			lualine_b = { {
				"branch",
				padding = {
					left = 1,
					right = 0,
				},
			} },
			lualine_c = { "filename" },
			lualine_x = { "filetype" },
			lualine_y = { {
				"progress",
				padding = {
					left = 0,
					right = 1,
				},
			} },
			lualine_z = { {
				"location",
				padding = {
					left = 0,
					right = 1,
				},
			} },
		},
	},
	-- keys = {
	-- 	{ "<leader>1", "<cmd>LualineBuffersJump 1<CR>", desc = "Go to buffer 1" },
	-- 	{ "<leader>2", "<cmd>LualineBuffersJump 2<CR>", desc = "Go to buffer 2" },
	-- 	{ "<leader>3", "<cmd>LualineBuffersJump 3<CR>", desc = "Go to buffer 3" },
	-- 	{ "<leader>4", "<cmd>LualineBuffersJump 4<CR>", desc = "Go to buffer 4" },
	-- 	{ "<leader>5", "<cmd>LualineBuffersJump 5<CR>", desc = "Go to buffer 5" },
	-- 	{ "<leader>6", "<cmd>LualineBuffersJump 6<CR>", desc = "Go to buffer 6" },
	-- },
}
