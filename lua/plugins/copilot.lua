return {
  "zbirenbaum/copilot.lua",
  lazy = false,
  -- keys = {
  --   { '<Tab>', function()
  --     if require("copilot.suggestion").is_visible() then
  --       require("copilot.suggestion").accept()
  --     else
  --       vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
  --     end
  --   end, 
  --     desc = "Accept suggestion",
  --    }
  -- },
  config = {
    panel = {
      enabled = false,
    },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      debounce = 75,
      keymap = {
        accept = "<Tab>",
        accept_word = false,
        accept_line = false,
        next = "<C-n>",
        prev = false,
        dismiss = false,
      },
    },
    filetypes = {
      javascript = true,
      typescript = true,
      yaml = false,
      markdown = false,
      help = false,
      gitcommit = false,
      gitrebase = false,
      hgcommit = false,
      svn = false,
      cvs = false,
      ["."] = false,
    },
  },
}
