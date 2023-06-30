return {
  'akinsho/bufferline.nvim',
  version = "v3.*",
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  lazy = false,
  config = {
    options = {
      indicator = {
        icon = '', -- this should be omitted if indicator style is not 'icon'
        style = 'underline',
      },
      show_buffer_close_icons = true,
      hover = {
        enabled = true,
        delay = 200,
        reveal = { 'close' }
      },
      separator_style = { "", "" },
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          text_align = "left",
          separator = true
        }
      },
    },
  },
  keys = {
    { "<leader>1",  "<cmd>BufferLineGoToBuffer 1<CR>",  desc = "Go to buffer 1" },
    { "<leader>2",  "<cmd>BufferLineGoToBuffer 2<CR>",  desc = "Go to buffer 2" },
    { "<leader>3",  "<cmd>BufferLineGoToBuffer 3<CR>",  desc = "Go to buffer 3" },
    { "<leader>4",  "<cmd>BufferLineGoToBuffer 4<CR>",  desc = "Go to buffer 4" },
    { "<leader>5",  "<cmd>BufferLineGoToBuffer 5<CR>",  desc = "Go to buffer 5" },
    { "<leader>6",  "<cmd>BufferLineGoToBuffer 6<CR>",  desc = "Go to buffer 6" },
    { "<leader>7",  "<cmd>BufferLineGoToBuffer 7<CR>",  desc = "Go to buffer 7" },
    { "<leader>8",  "<cmd>BufferLineGoToBuffer 8<CR>",  desc = "Go to buffer 8" },
    { "<leader>9",  "<cmd>BufferLineGoToBuffer 9<CR>",  desc = "Go to buffer 9" },
    { "<leader>0",  "<cmd>BufferLineGoToBuffer 10<CR>", desc = "Go to buffer 10" },
    { "<leader>bp",  "<cmd>BufferLineTogglePin<CR>",  desc = "Toggle pin" },
    { "<leader>bn",  "<cmd>BufferLineCycleNext<CR>",    desc = "Cycle next" },
    { "<leader>bp",  "<cmd>BufferLineCyclePrev<CR>",    desc = "Cycle prev" },
    { "<leader>bd",  "<cmd>BufferLinePickClose<CR>",    desc = "Pick and close" },
    { "<leader>be",  "<cmd>BufferLineSortByExtension<CR>", desc = "Sort by extension" },
    { "<leader>bd",  "<cmd>BufferLineSortByDirectory<CR>", desc = "Sort by directory" },
    { "<leader>bl",  "<cmd>BufferLineSortByLanguage<CR>",  desc = "Sort by language" },
  },
}
