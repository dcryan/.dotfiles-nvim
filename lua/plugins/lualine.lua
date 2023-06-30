return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    -- 'kyazdani42/nvim-web-devicons',
  },
  lazy = false,
  config = {
    options = {
      theme                = 'rose-pine',
      section_separators   = { left = '', right = '' },
      component_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch' },
      lualine_c = { 'filename' },
      lualine_x = { 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
  },
}
