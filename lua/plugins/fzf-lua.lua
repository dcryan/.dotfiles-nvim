return {
	"ibhagwan/fzf-lua",
	dependencies = { "echasnovski/mini.icons" },
	opts = {
		files = {
			cmd = "fd --type f --hidden --follow --exclude package-lock.json --exclude node_modules",
			previewer = {
				cmd = "cat",
				args = "--number",
			},
		},
		keymap = {
			fzf = {
				["ctrl-q"] = "select-all+accept",
			},
		},
	},
	keys = {
		{ "<C-p>", "<cmd>lua require('fzf-lua').files()<CR>", desc = "Find files" },
		{ "<leader>f", "<cmd>lua require('fzf-lua').live_grep_native()<CR>", desc = "Find in files" },
		{ "<leader>f", "<cmd>lua require('fzf-lua').grep_visual()<CR>", desc = "Find selection in files", mode = "v" },
		{ "<leader>F", "<cmd>lua require('fzf-lua').grep_cword()<CR>", desc = "Find in files" },
		{ "<leader>b", "<cmd>lua require('fzf-lua').buffers()<CR>", desc = "Find buffers" },
		{ "<leader>gh", "<cmd>lua require('fzf-lua').help_tags()<CR>", desc = "Search help tags" },
	},
}
