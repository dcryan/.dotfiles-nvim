-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "s", action = "vsplit" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<leader>n', vim.cmd.NvimTreeToggle, { noremap = true })
vim.keymap.set('n', '<leader>m', vim.cmd.NvimTreeFindFile, { noremap = true })

-- vim.wo.foldmethod="expr"
-- vim.o.foldexpr="nvim_treesitter#foldexpr()"
-- vim.wo.foldenable=false -- can be enabled directly in opened file - using 'zi' - toogle fold
