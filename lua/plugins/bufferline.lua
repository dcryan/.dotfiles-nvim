return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"echasnovski/mini.icons",
	},
	lazy = false,
	opts = {
		options = {
			indicator = {
				icon = "", -- this should be omitted if indicator style is not 'icon'
				style = "underline",
			},
			show_buffer_close_icons = true,
			hover = {
				enabled = true,
				delay = 200,
				reveal = { "close" },
			},
			separator_style = { "", "" },
			offsets = {
				{
					filetype = "neo-tree",
					text = "File Explorer",
					text_align = "left",
					separator = true,
				},
			},
		},
	},
	keys = {
		{ "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", desc = "Go to buffer 1" },
		{ "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", desc = "Go to buffer 2" },
		{ "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", desc = "Go to buffer 3" },
		{ "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", desc = "Go to buffer 4" },
		{ "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", desc = "Go to buffer 5" },
		{ "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", desc = "Go to buffer 6" },
		{ "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", desc = "Go to buffer 7" },
		{ "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", desc = "Go to buffer 8" },
		{ "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", desc = "Go to buffer 9" },
		{ "<leader>0", "<cmd>BufferLineGoToBuffer 10<CR>", desc = "Go to buffer 10" },
	},
}
