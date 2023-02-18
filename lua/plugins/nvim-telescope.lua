return {
  'nvim-telescope/telescope.nvim',
  lazy = false,
  version = '0.1.0',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<C-p>', builtin.find_files, { noremap = true, desc = 'Find files' })
    vim.keymap.set('n', '<leader>f', builtin.live_grep, { noremap = true, desc = 'Find in files' })
    vim.keymap.set('n', '<leader>F', builtin.grep_string, { noremap = true, desc = 'Find in files' })
    vim.keymap.set('n', '<leader>b', builtin.buffers, { noremap = true, desc = 'Find buffers' })
    vim.keymap.set('n', '<leader>gh', builtin.help_tags, { noremap = true, desc = "Search help tags" })
  end,
}
