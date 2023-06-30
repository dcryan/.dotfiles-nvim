return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    highlight = { enable = true },
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
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
