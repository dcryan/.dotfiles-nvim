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
			terraform = { "terraform_fmt" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},

	init = function()
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

		vim.keymap.set("n", "gf", function()
			require("conform").format()
		end, { desc = "format file" })
	end,
}
