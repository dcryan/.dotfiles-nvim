return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	-- dependencies = {
	-- 	"nvim-treesitter/nvim-treesitter-textobjects",
	-- },
	opts = {
		highlight = { enable = true },
		indent = { enable = true },
		-- context_commentstring = {
		--   enable = false,
		--   enable_autocmd = false,
		-- },
		ensure_installed = {
			"bash",
			"c",
			"css",
			"help",
			"html",
			"javascript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"prisma",
			"python",
			"regex",
			"tsx",
			"typescript",
			"vim",
			"yaml",
			"gitignore",
			"query",
			"swift",
			"kotlin",
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = false,
				node_decremental = "<BS>",
			},
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}

-- Using Treesitter for folding
-- vim.wo.foldmethod="expr"
-- vim.o.foldexpr="nvim_treesitter#foldexpr()"
-- vim.wo.foldenable=false -- can be enabled directly in opened file - using 'zi' - toogle fold
