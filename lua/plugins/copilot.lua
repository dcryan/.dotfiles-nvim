return {
  "zbirenbaum/copilot.lua",
  lazy = false,
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
