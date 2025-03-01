return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
}

-- return {
-- 	"nvim-telescope/telescope.nvim",
-- 	lazy = false,
-- 	version = "0.1.5",
-- 	dependencies = {
-- 		"nvim-lua/plenary.nvim",
-- 		"BurntSushi/ripgrep",
-- 		"nvim-telescope/telescope-fzf-native.nvim",
-- 		"nvim-telescope/telescope-live-grep-args.nvim",
-- 	},
-- 	opts = {
-- 		defaults = {
-- 			layout_strategy = "flex",
-- 			sorting_strategy = "ascending",
-- 			layout_config = {
-- 				prompt_position = "top",
-- 			},
-- 		},
-- 	},
-- 	keys = {
-- 		{ "<C-p>", "<cmd>lua require('telescope.builtin').find_files({hidden = true})<CR>", desc = "Find files" },
-- 		{
-- 			"<leader>f",
-- 			"<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
-- 			desc = "Find in files",
-- 		},
-- 		{
-- 			"<leader>F",
-- 			"<cmd>lua require('telescope.builtin').grep_string()<CR>",
-- 			desc = "Find in files",
-- 		},
-- 		{ "<leader>b", "<cmd>lua require('telescope.builtin').buffers()<CR>", desc = "Find buffers" },
-- 		{
-- 			"<leader>gh",
-- 			"<cmd>lua require('telescope.builtin').help_tags()<CR>",
-- 			desc = "Search help tags",
-- 		},
-- 	},
-- }
