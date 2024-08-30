return {
  {
    "echasnovski/mini.indentscope",
    opts = {
      symbol = "▏",
      draw = {
        delay = 0,
      }
    },
    config = function(_, opts)
      local indentscope = require("mini.indentscope")
      opts.draw.animation = indentscope.gen_animation.none()

      indentscope.setup(opts)
    end,
  },

  {
    "echasnovski/mini.cursorword",
    config = function()
      require("mini.cursorword").setup()
    end,
  },

  {
    "echasnovski/mini.surround",
    opts = {
      -- NOTE: Changing Keymaps to be similar to 'tpope/vim-surround'
      -- Module mappings. Use `''` (empty string) to disable one.
      mappings = {
        add = 'ys',          -- Add surrounding in Normal and Visual modes
        delete = 'ds',       -- Delete surrounding
        replace = 'cs',      -- Replace surrounding
        find = '',           -- Find surrounding (to the right)
        find_left = '',      -- Find surrounding (to the left)
        highlight = '',      -- Highlight surrounding
        update_n_lines = '', -- Update `n_lines`
        suffix_last = '',    -- Suffix to search with "prev" method
        suffix_next = '',    -- Suffix to search with "next" method
      }
    },
    config = function(_, opts)
      require('mini.surround').setup(opts)

      -- Remap adding surrounding to Visual mode selection
      vim.api.nvim_del_keymap('x', 'ys')
      -- vim.api.nvim_set_keymap('x', 'S', [[:<C-u>lua MiniSurround.add('visual')<CR>]], { noremap = true })
    end,
  },

  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    config = function()
      require("mini.comment").setup {
        options = {
          custom_commentstring = function()
            return require('ts_context_commentstring.internal').calculate_commentstring() or vim.bo.commentstring
          end,
        },
      }
    end,
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    }
  },

  {
    'echasnovski/mini.files',
    version = false,
    config = function()
      local miniFiles = require('mini.files')

      vim.keymap.set('n', '<leader>m', function()
        require('mini.files').open()
      end, { noremap = true, silent = true, desc = 'Mini Find file' })

      -- vim.keymap.set("n", "gf", function()
      --   -- vim.lsp.buf.format({ async = true })
      --   conform.format()
      --   print("format")
      -- end, { remap = false, desc = "Format" })

      miniFiles.setup()
    end,
  },
}
