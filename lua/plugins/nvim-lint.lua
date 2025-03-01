return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	opts = {
		linters_by_ft = {
			javascript = { "eslint" },
			javascriptreact = { "eslint" },
			typescript = { "eslint" },
			typescriptreact = { "eslint" },
			css = { "stylelint" },
			html = { "stylelint" },
			json = { "jsonlint" },
			jsonc = { "jsonlint" },
			yaml = { "yamllint" },
			markdown = { "markdownlint-cli2" },
			lua = { "luacheck" },
			python = { "flake8" },
			dockerfile = { "hadolint" },
			sh = { "shellcheck" },
			bash = { "shellcheck" },
			zsh = { "shellcheck" },
			java = { "checkstyle" },
			terraform = { "tflint" },
		},
	},
	config = function(_, opts)
		local lint = require("lint")

		lint.linters_by_ft = opts.linters_by_ft

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave", "TextChanged" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
