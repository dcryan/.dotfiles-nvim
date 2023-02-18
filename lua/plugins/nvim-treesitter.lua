return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = {
    -- A list of parser names, or "all"
    ensure_installed = {
      "help",
      "javascript",
      "typescript",
      "primal",
      "markdown",
      "json",
      "yaml",
      "html",
      "css",
      "bash",
      "python",
      "c",
      "lua",
    },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
      -- `false` will disable the whole extension
      enable = true,

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
  },
  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring',
    {
      "echasnovski/mini.comment",
      config = function()
        local config = {
          hooks = {
            pre = function()
              require('ts_context_commentstring.internal').update_commentstring()
            end,
          },
        }

        require("mini.comment").setup(config)
      end,
    },
  }
}

-- Using Treesitter for folding
-- vim.wo.foldmethod="expr"
-- vim.o.foldexpr="nvim_treesitter#foldexpr()"
-- vim.wo.foldenable=false -- can be enabled directly in opened file - using 'zi' - toogle fold
