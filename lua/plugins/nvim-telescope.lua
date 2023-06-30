return {
  'nvim-telescope/telescope.nvim',
  lazy = false,
  version = '0.1.0',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = {},
  keys = {
    { "<C-p>",      "<cmd>lua require('telescope.builtin').find_files()<CR>",  desc = "Find files" },
    { "<leader>f",  "<cmd>lua require('telescope.builtin').live_grep()<CR>",   desc = "Find in files" },
    { "<leader>F",  "<cmd>lua require('telescope.builtin').grep_string()<CR>", desc = "Find in files" },
    -- { "<leader>b",  "<cmd>lua require('telescope.builtin').buffers()<CR>",     desc = "Find buffers" },
    { "<leader>gh", "<cmd>lua require('telescope.builtin').help_tags()<CR>",   desc = "Search help tags" },
  },
}
