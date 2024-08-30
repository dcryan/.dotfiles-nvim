return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
			css = { "prettier" },
			html = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			graphql = { "prettier" },
			handlebars = { "prettier" },
			lua = { "stylua" },
			python = { "black" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
	config = function(_, opts)
		local conform = require("conform")

		-- Set formatexpr to conform's formatexpr
		-- TODO: This doesn't seem to be working.
		vim.o.formatexpr = "v:lua.require('conform').formatexpr()"

		-- Set keymaps to call vim's native formatter
		vim.keymap.set("n", "gf", conform.format, { desc = "format file" })

		-- Add debug print inside conform's formatexpr function
		local original_formatexpr = conform.formatexpr
		function conform.formatexpr(...)
			print("Conform formatexpr called")
			return original_formatexpr(...)
		end

		conform.setup(opts)
	end,
}
