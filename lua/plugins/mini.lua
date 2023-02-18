return {
  {
    "echasnovski/mini.indentscope",
    config = function()
      local indentscope = require("mini.indentscope")

      local config = {
        symbol = "▏",
        draw = {
          delay = 0,
          animation = indentscope.gen_animation.none()
        }
      }
      indentscope.setup(config)
    end,
  },

  -- { "echasnovski/mini.sessions" },

  {
    "echasnovski/mini.cursorword",
    config = function()
      require("mini.cursorword").setup()
    end,
  },

  {
    "echasnovski/mini.surround",
    config = function()
      local MiniSurround = require('mini.surround')

      local config = {
        -- NOTE: Changing Keymaps to be similar to 'tpope/vim-surround'
        -- Module mappings. Use `''` (empty string) to disable one.
        mappings = {
          add = 'ys', -- Add surrounding in Normal and Visual modes
          delete = 'ds', -- Delete surrounding
          replace = 'cs', -- Replace surrounding

          find = '', -- Find surrounding (to the right)
          find_left = '', -- Find surrounding (to the left)
          highlight = '', -- Highlight surrounding
          update_n_lines = '', -- Update `n_lines`
          suffix_last = '', -- Suffix to search with "prev" method
          suffix_next = '', -- Suffix to search with "next" method
        }
      }

      MiniSurround.setup(config)

      -- Remap adding surrounding to Visual mode selection
      vim.api.nvim_del_keymap('x', 'ys')
      -- vim.api.nvim_set_keymap('x', 'S', [[:<C-u>lua MiniSurround.add('visual')<CR>]], { noremap = true })
    end,
  },
}
