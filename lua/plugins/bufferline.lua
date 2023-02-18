return {
  'akinsho/bufferline.nvim',
  version = "v3.*",
  dependencies = {
    -- 'nvim-tree/nvim-web-devicons',
  },
  config = {
    options = {
      -- numbers = "ordinal",
      indicator = {
        icon = '▎', -- this should be omitted if indicator style is not 'icon'
        style = 'icon',
      },
      buffer_close_icon = "",
      modified_icon = "",
      close_icon = "",
      left_trunc_marker = "",
      right_trunc_marker = "",
      max_name_length = 18,
      max_prefix_length = 15,
      truncate_names = true,
      tab_size = 18,
      -- diagnostics = "nvim_lsp",
      -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
      --   local icon = level:match("error") and " " or " "
      --   return " " .. icon .. count
      -- end,
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          text_align = "left",
          separator = true
        }
      },
      show_buffer_close_icons = false,
      show_close_icon = false,
      show_tab_indicators = false,
      persist_buffer_sort = true,
      separator_style = "thin",
      enforce_regular_tabs = false,
      always_show_bufferline = true,
      sort_by = "directory",
    },
  },
  keys = {
    { "<leader>pb", "<cmd>BufferLinePick<CR>", desc = "Pick buffer" },
    { "<leader>pc", "<cmd>BufferLinePickClose<CR>", desc = "Pick buffer and close" },
  },
  lazy = false,
}
